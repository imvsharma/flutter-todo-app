import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => MyHomePage(title: 'Task Manager'),
        '/addnewtask': (context) => AddNewTaskScreen()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      /* home: MyHomePage(title: 'Task Manager'), */
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontSize: 24)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add,color: Colors.white), onPressed: () {
            Navigator.pushNamed(context, '/addnewtask');
          } ,tooltip: 'Add new task')
        ],
      ),
      drawer: Drawer(),
      body: Center()
    );
  }
}


class AddNewTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add new task'),)
    );

  }
}

