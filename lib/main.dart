import 'package:flutter/material.dart';
import './widgets/createTask.dart';
import './screens/home.dart';

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
        '/':(context) => HomeScreen(),
        '/addnewtask': (context) => CreateTaskForm()
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

/* 
class AddNewTaskScreen extends StatelessWidget {
  final _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add new task'),),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Form(
          key: _formkey,
          
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Task name',
                  border: OutlineInputBorder(),
                  
                ),
              ),
              TextField(
                maxLength: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(hintText: 'Enter task description', border: OutlineInputBorder(), labelText: 'Task description'),
              ),
            ],
          )
        ),),
    );

  }
}

 */