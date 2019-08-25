import 'package:flutter/material.dart';

class EmptyTaskList extends StatefulWidget {
  @override
  EmptyTaskListState createState() {
    return EmptyTaskListState();
  }
}

class EmptyTaskListState extends State<EmptyTaskList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Task list is empty',
            style: TextStyle(color: Colors.grey,fontSize: 24),
          ),
          RaisedButton(
            child: Text('Add task', style: TextStyle(fontSize: 18),),
            onPressed: () {
              Navigator.pushNamed(context, '/addnewtask');
            },

          )
        ],
      )
      /* Text(
        'Task list is empty',
        style: TextStyle(color: Colors.grey,fontSize: 24),
      ), */
    );
  }
}
