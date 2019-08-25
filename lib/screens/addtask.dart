import 'package:flutter/material.dart';
import '../widgets/createTask.dart';

class CreateTaskScreen extends StatefulWidget {
  @override
  CreateTaskScreenState createState() {
    return CreateTaskScreenState();
  }
}

class CreateTaskScreenState extends State<CreateTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Task', style: TextStyle(fontSize: 20))
      ),
      body: CreateTaskForm(),
    );
  }
}