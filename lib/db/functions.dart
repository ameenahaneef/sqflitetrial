import 'package:mytrialdb/screen/model.dart';
import 'package:sqflite/sqflite.dart';

late Database _db;
Future<void> initializeDatabase() async {
  _db = await openDatabase("my.db", version: 1, onCreate: (db, version) async {
    await db.execute('CREATE TABLE hello(id INTEGER PRIMARY KEY,name TEXT,age TEXT)');
  });
  print('******');
  print('table creates');
}

Future<void> addStudent(Model value) async {
  await _db.rawInsert(
    'INSERT INTO hello(name,age) VALUES (?,?)',
    [value.name, value.age],
  );
  print('Data inserted successfully: ${value.name}, ${value.age}');
}
// Future <void> createAtable() async{ await _db.execute('CREATE TABLE IF NOT EXISTS hello (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age TEXT)');}
