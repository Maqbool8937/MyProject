import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'tasks.db'),
      version: 1,
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, isDone INTEGER)',
        );
      },
    );
  }

  Future<int> addTask(String title) async {
    final db = await database;
    return db.insert('tasks', {'title': title, 'isDone': 0});
  }

  Future<List<Map<String, dynamic>>> fetchTasks() async {
    final db = await database;
    return db.query('tasks', orderBy: 'id DESC');
  }

  Future<int> updateTaskTitle(int id, String newTitle) async {
    final db = await database;
    return db.update(
      'tasks',
      {'title': newTitle},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> updateTaskStatus(int id, bool isDone) async {
    final db = await database;
    return db.update(
      'tasks',
      {'isDone': isDone ? 1 : 0},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteTask(int id) async {
    final db = await database;
    return db.delete('tasks', where: 'id = ?', whereArgs: [id]);
  }
}
