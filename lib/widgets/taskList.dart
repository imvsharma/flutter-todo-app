import 'package:flutter/material.dart';
//import '../services/task.service.dart';

class TaskList extends StatefulWidget {
  @override
  TaskListState createState() {
    return TaskListState();
  }
}

class TaskListState extends State<TaskList> {
  final List items = List.generate(1000, (i)=> "Heading $i");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        if(index.isOdd) {
          return Divider(color: Colors.grey,);
        }
        final item = items[index];
        return ListTile(
          title: Text(
            item,
            style: Theme.of(context).textTheme.title,
          )
        );
      },
    );
  }
}