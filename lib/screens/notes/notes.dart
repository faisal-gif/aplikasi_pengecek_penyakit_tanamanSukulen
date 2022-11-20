import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

import 'package:quiz_app/DbHelper/DbHelper.dart';
import 'package:quiz_app/models/notes.dart';
import 'notesForm.dart';

class Catatan extends StatefulWidget {
  @override
  CatatanState createState() => CatatanState();
}

class CatatanState extends State<Catatan> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Notes> noteList;
  List<String> listItem = ["Delete", "Update"];
  String _newValuePerem = "";

  @override
  Widget build(BuildContext context) {
    if (noteList == null) {
      noteList = List<Notes>();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Catatan"),
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
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: createListView()),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var notes = await navigateToNotesForm(context, null);
          if (notes != null) {
            int result = await dbHelper.insert(notes);
            if (result > 0) {}
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<Notes> navigateToNotesForm(BuildContext context, Notes notes) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return notesForm(notes);
    }));
    return result;
  }

  ListView createListView() {
    updateListView();
    TextStyle textStyle = Theme.of(context).textTheme.headline5;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            title: Text(
              this.noteList[index].judul,
              style: textStyle,
            ),
            subtitle: Text(this.noteList[index].isi),
            trailing: GestureDetector(
              child: DropdownButton<String>(
                underline: SizedBox(),
                icon: Icon(Icons.menu),
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String changeValue) async {
                  if (changeValue == "Delete") {
                    dbHelper.delete(this.noteList[index].id);
                    updateListView();
                  } else if (changeValue == "Update") {
                    var item = await navigateToNotesForm(
                        context, this.noteList[index]);

                    dbHelper.update(item);
                    updateListView();
                  }
                  ;
                },
              ),
            ),
          ),
        );
      },
    );
  }

  void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Notes>> itemListFuture = dbHelper.getNotesList();
      itemListFuture.then((noteList) {
        setState(() {
          this.noteList = noteList;
          this.count = noteList.length;
        });
      });
    });
  }
}
