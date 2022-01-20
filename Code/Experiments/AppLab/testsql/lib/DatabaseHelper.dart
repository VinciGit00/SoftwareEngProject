import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:testsql/Models/Cliente2.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'accounts.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE accounts (
      email text NOT NULL,
      Password text NOT NULL
      ) 
      ''');
  }

  Future<List<Cliente>> getAccounts() async {
    Database db = await instance.database;
    var accounts = await db.query('accounts', orderBy: 'email');
    List<Cliente> clienteList = accounts.isNotEmpty
        ? accounts.map((c) => Cliente.fromMap(c)).toList()
        : [];
    return clienteList;
  }

  Future<int> add(Cliente cliente) async {
    Database db = await instance.database;
    return await db.insert('accounts', cliente.toMap());
  }

  Future<int> remove(String id) async {
    Database db = await instance.database;
    return await db.delete('accounts', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> update(Cliente cliente) async {
    Database db = await instance.database;
    return await db.update('accounts', cliente.toMap(),
        where: "id = ?", whereArgs: [cliente.email]);
  }
}
