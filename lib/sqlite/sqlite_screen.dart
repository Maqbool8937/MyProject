import 'package:flutter/material.dart';
import 'sqlite_database.dart';

class TaskApp extends StatefulWidget {
  @override
  _TaskAppState createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> _tasks = [];

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final tasks = await _dbHelper.fetchTasks();
    setState(() {
      _tasks = tasks;
    });
  }

  Future<void> _addTask(String title) async {
    if (title.isNotEmpty) {
      await _dbHelper.addTask(title);
      _loadTasks();
    }
  }

  Future<void> _updateTask(int id, String newTitle) async {
    if (newTitle.isNotEmpty) {
      await _dbHelper.updateTaskTitle(id, newTitle);
      _loadTasks();
    }
  }

  Future<void> _deleteTask(int id) async {
    await _dbHelper.deleteTask(id);
    _loadTasks();
  }

  void _showTaskDialog({String? currentTitle, int? taskId}) {
    final TextEditingController _controller =
        TextEditingController(text: currentTitle ?? '');

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(taskId == null ? 'Add Task' : 'Update Task'),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(hintText: 'Enter task title'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (taskId == null) {
                  _addTask(_controller.text); // Add task
                } else {
                  _updateTask(taskId, _controller.text); // Update task
                }
                Navigator.of(context).pop(); // Close dialog
              },
              child: Text(taskId == null ? 'Add' : 'Update'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task Manager'),
        ),
        body: _tasks.isEmpty
            ? Center(child: Text('No tasks available!', style: TextStyle(fontSize: 18)))
            : ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  final task = _tasks[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: ListTile(
                      title: Text(
                        task['title'],
                        style: TextStyle(
                          decoration: task['isDone'] == 1
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      leading: Checkbox(
                        value: task['isDone'] == 1,
                        onChanged: (value) async {
                          await _dbHelper.updateTaskStatus(task['id'], value!);
                          _loadTasks();
                        },
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.blue),
                            onPressed: () => _showTaskDialog(
                              currentTitle: task['title'],
                              taskId: task['id'],
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _deleteTask(task['id']),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showTaskDialog(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}


