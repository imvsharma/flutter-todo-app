import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager', style: TextStyle(fontSize: 24)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: 
            Icon(
              Icons.add,
              color: Colors.white
            ), 
            onPressed: () {
              Navigator.pushNamed(context, '/addnewtask');
            }
          )
        ],
      ),
    );
  }
}