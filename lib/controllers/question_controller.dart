import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/score/score_screen.dart';
import 'package:quiz_app/models/Hasil.dart';

// We use get package for our state management

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  // Lets animated our progress bar

  AnimationController _animationController;
  Animation _animation;
  // so that we can access our animation outside
  Animation get animation => this._animation;

  PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index'],
            jenis: question['jenis'],
            penanganan: question['penanganan'],
            gambar: question['gambar']),
      )
      .toList();
  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _correctAns;
  int get correctAns => this._correctAns;

  int _selectedAns;
  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  List<String> _jenis = [];
  List<String> get jenis => this._jenis;
  List<String> _penanganan = [];
  List<String> get penanganan => this._penanganan;
  List<String> _gambar = [];
  List<String> get gambar => this._gambar;
  List<int> _jml = [];
  List<int> get jml => this._jml;
  int _angka = 0;
  int get angka => this._angka;
  List<Hasil> _hasil = List<Hasil>();
  List<Hasil> get hasil => this._hasil;
  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: Duration(seconds: 100), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation
    // Once 60s is completed go to the next qn
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;
    if (_correctAns == _selectedAns) {
      var contain = jenis.contains(question.jenis);
      if (!contain) {
        jenis.add(question.jenis);
        hasil.add(
            Hasil(question.jenis, question.penanganan, question.gambar, 1));
      } else {
        if (jenis.contains(question.jenis)) {
          final ad = hasil.where((element) => element.jenis == question.jenis);
          for (final x in ad) {
            _angka = x.jumlah;
          }
          _angka++;
          hasil[hasil
                  .indexWhere((element) => element.jenis == question.jenis)] =
              Hasil(
                  question.jenis, question.penanganan, question.gambar, _angka);
        }
      }
      hasil.sort((a, b) => b.jumlah.compareTo(a.jumlah),);
    }
    _animationController.stop();
    update();

    // Once user select an ans after 3s it will go to the next qn
    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });

    // It will stop the counter
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us simple way to naviigate another page
      Get.to(ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
