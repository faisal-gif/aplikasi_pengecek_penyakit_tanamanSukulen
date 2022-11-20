import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class ManualBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Manual Book Aplikasi"),
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: <Widget>[
                  SizedBox(height: 80),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        height: 150,
                        child: Card(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "User mengakses menu 'Pengecekan Tanaman'",
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                      )),
                      Expanded(
                          child: Container(
                        height: 150,
                        child: Card(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "User Menjawab opsi-opsi pertanyaan yang tealh disediakan dengan data yang ada",
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                      )),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        height: 150,
                        child: Card(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "3",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Setelah itu tampil kesimpulan yaitu berupa penyakit pada tumbuhan dan cara penangannanya",
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                      )),
                      Expanded(
                          child: Container(
                        height: 150,
                        child: Card(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "4",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Menu Notes Diakses oleh user untuk mencatat data terkait tanaman tersebut",
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                      )),
                    ],
                  ),
                ]))),
      ),
    );
  }
}
