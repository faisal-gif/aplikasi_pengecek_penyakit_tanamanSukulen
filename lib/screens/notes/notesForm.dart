import 'package:flutter/material.dart';

import 'package:quiz_app/models/notes.dart';


class notesForm extends StatefulWidget {
  final Notes notes;

  notesForm(this.notes);
  @override
  notesFormState createState() => notesFormState(this.notes);
}

//class controller
class notesFormState extends State<notesForm> {
  Notes notes;
  notesFormState(this.notes);
  TextEditingController judulController = TextEditingController();
  TextEditingController isiController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    //kondisi
    if (notes != null) {
      judulController.text = notes.judul;
      isiController.text = notes.isi;
    }
    //rubah
    return Scaffold(
        appBar: AppBar(
          title: notes == null ? Text('Tambah') : Text('Ubah'),
          leading: Icon(Icons.keyboard_arrow_left),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
             
              // nama
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: judulController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Judul',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              // harga
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: isiController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Isi',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              // tombol button
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    // tombol simpan
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          'Save',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          if (notes == null) {
                            // tambah data
                            notes = Notes(
                                judulController.text,
                                isiController.text,
                                );
                          } else {
                            // ubah data
                            notes.judul = judulController.text;
                            notes.isi = isiController.text;
                            
                          }
                          // kembali ke layar sebelumnya dengan membawa objek item
                          Navigator.pop(context, notes);
                        },
                      ),
                    ),
                    Container(
                      width: 5.0,
                    ),
                    // tombol batal
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          'Cancel',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}