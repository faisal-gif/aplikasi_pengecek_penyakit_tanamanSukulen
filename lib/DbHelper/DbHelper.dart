
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:quiz_app/models/notes.dart';

class DbHelper {
  static DbHelper _dbHelper;
  static Database _database;
  DbHelper._createObject();
  Future<Database> initDb() async {
    //untuk menentukan nama database dan lokasi yg dibuat
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'note.db';

    //create, read databases
    //create, read databases
    var database = openDatabase(path,
        version: 6, onCreate: _createDb, onUpgrade: _onUpgrade);
//mengembalikan nilai object sebagai hasil dari fungsinya
    return database;
  }

// update table baru
  void _onUpgrade(Database db, int oldVersion, int newVersion) async {
    _createDb(db, newVersion);
  }

  //buat tabel baru dengan nama item
  void _createDb(Database db, int version) async {
    var batch = db.batch();
    batch.execute('DROP TABLE IF EXISTS Notes');
    batch.execute('''
    CREATE TABLE Notes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    judul TEXT,
    isi TEXT
    )
    ''');
    await batch.commit();
  }

//select databases item
  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.initDb();
    var mapList = await db.query('Notes');
    return mapList;
  }

//create databases
  Future<int> insert(Notes object) async {
    Database db = await this.initDb();
    int count = await db.insert('Notes', object.toMap());
    return count;
  }


//update databases
  Future<int> update(Notes object) async {
    Database db = await this.initDb();
    int count = await db
        .update('Notes', object.toMap(), where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  
  //delete databases
  Future<int> delete(int id) async {
    Database db = await this.initDb();
    int count = await db.delete('Notes', where: 'id=?', whereArgs: [id]);
    return count;
  }

   Future<List<Notes>> getNotesList() async {
    var itemMapList = await select();
    int count = itemMapList.length;
    List<Notes> itemList = List<Notes>();
    for (int i = 0; i < count; i++) {
      itemList.add(Notes.fromMap(itemMapList[i]));
    }
    return itemList;
  }
  

  factory DbHelper() {
    if (_dbHelper == null) {
      _dbHelper = DbHelper._createObject();
    }
    return _dbHelper;
  }
  Future<Database> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }
}