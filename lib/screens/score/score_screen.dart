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
              child: Card(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text("Kesimpulan dari pengecekan tanaman"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Kemungkinan tanaman anda terkena hama / penyakit"),
                    SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      '${_qnController.hasil[0].gambar}',
                      width: 150,
                      height: 150,
                    ),
                    ListTile(
                      title: Text('${_qnController.hasil[0].jenis}'),
                      subtitle: Text('${_qnController.hasil[0].penanganan}'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      child: Text(
                          "Kemungkinan Tanaman Anda Juga Terkena Hama / Penyakit "),
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                    ),
                    Expanded(
                        child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                      child: ListView.builder(
                          itemCount: _qnController.hasil.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: <Widget>[
                                Expanded(
                                    child: Text(_qnController.hasil[index].jenis
                                        .toString())),
                                Text(" dengan"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(_qnController.hasil[index].jumlah
                                    .toString()),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Gejala"),
                              ],
                            );
                          }),
                    )),
                  ],
                ),
              ),
            )));
  }
}
