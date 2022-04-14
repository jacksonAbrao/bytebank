import 'package:bytebank/dao/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'bytebank,db');
  return openDatabase(
    path,
    onCreate: (db, varsion) {
      db.execute(ContactDao.tableSql);
    },
    version: 1,
  );
}
