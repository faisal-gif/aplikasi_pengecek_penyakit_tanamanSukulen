import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/manual/manualBook.dart';
import 'package:quiz_app/screens/notes/notes.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Text(
                  "Selamat Datang,",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text("di aplikasi Pakar Diagnosa Tanaman Sukulen"),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("assets/icons/logo.png", width: 150),
                ),
                SizedBox(
                  height: 50,
                ),
                // 1/6
                InkWell(
                  onTap: () => Get.to(QuizScreen()),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text(
                      "Pengecekan Tanaman",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () => Get.to(ManualBook()),
                        child: Container(
                          width: double.infinity,
                          height: 130,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Text(
                            "MANUAL BOOK",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: InkWell(
                        onTap: () => Get.to(Catatan()),
                        child: Container(
                          width: double.infinity,
                          height: 130,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Text(
                            "NOTES",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 2), // it will take 2/6 spaces
              ],
            ),
          ),
        ),
      ),
    );
  }
}
