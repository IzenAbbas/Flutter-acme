import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  int taskIndex = 0;
  List<String> tasks = [];
  TextEditingController ctrl = TextEditingController();

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
        backgroundColor: Colors.cyan[300],
        shape: RoundedRectangleBorder(side: BorderSide(width: 2)),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: BoxBorder.all(width: 20, color: Colors.white),
        ),
        child: Column(
          children: [
            TextField(
              controller: ctrl,
              decoration: InputDecoration(
                labelText: 'Enter Task#${taskIndex + 1}',
                hintText: 'Enter Task Details',
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (ctrl.text != '') {
                          taskIndex++;
                          tasks.add(ctrl.text);
                          ctrl.clear();
                        }
                      });
                    },
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.cyan[300],
                      side: BorderSide(width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    icon: Icon(Icons.add),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: BoxBorder.all(width: 2),
                    color: Colors.cyan[300],
                  ),

                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(20),
                            border: BoxBorder.all(width: 3),
                          ),
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 8,
                            bottom: 0,
                            top: 8,
                          ),
                          child: ListTile(
                            title: Text('Task#${index + 1}: ${tasks[index]}'),
                            trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  taskIndex--;
                                  tasks.removeAt(index);
                                });
                              },
                              icon: Icon(Icons.delete),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
