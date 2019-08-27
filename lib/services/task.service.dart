class TaskList {
  List _tasklist = [];

  void addTask(String value) {
    _tasklist.add(value);
  }

  List get taskList {
    return _tasklist;
  }
}