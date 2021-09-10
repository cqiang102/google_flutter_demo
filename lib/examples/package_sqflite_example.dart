import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class PackageSqfliteExample extends StatefulWidget {
  const PackageSqfliteExample({Key? key}) : super(key: key);

  @override
  _PackageSqfliteExampleState createState() => _PackageSqfliteExampleState();
}

class _PackageSqfliteExampleState extends State<PackageSqfliteExample> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SQLHelper {
  void open() async {
    var db = await openDatabase(
      "examples.db",
      version: 1,
      onCreate: (db, version) {},
      onUpgrade: (db, oldVersion, newVersion) {},
      onDowngrade: (db, oldVersion, newVersion){},
    );
    var result = await db.rawQuery("SELECT * FROM user WHERE name = ?",["aaa"]);

    // 事务
    db.transaction((txn)async {

    });
  }

}
