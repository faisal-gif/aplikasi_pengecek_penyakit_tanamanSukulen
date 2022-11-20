import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
        appBar: AppBar(
          title: Text("Hasil Analisis"),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.chevron_left),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => Navigator.of(context).pop(),
              );
            },
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green,
                Colors.white10,
              ],
            )),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: ListView.builder(
                itemCount: _qnController.penanganan.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('${_qnController.jenis[index]}'),
                      subtitle: Text('${_qnController.penanganan[index]}'),
                    ),
                  );
                },
              ),
            )));
  }
}
