import 'package:flutter/material.dart';
// Define a custom Form widget.
class CreateTaskForm extends StatefulWidget {
  @override
  CreateTaskFormState createState() {
    return CreateTaskFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class CreateTaskFormState extends State<CreateTaskForm> {
  // Create a global key that uniquely identifies the Form widget and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if(value.isEmpty){
                return 'Please enter the task title';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Add Task'),
            ),
          ),
        ],
      ),
      )
    );
  }
}