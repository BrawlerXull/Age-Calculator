import 'package:agecalculator/todotile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List tasks = [
    ["Hello 1", false],
    ["Hello 2", false],
  ];
  void changed(bool value,int index){
    setState(() {
      tasks[index][1] = !tasks[index][1];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("ToDo List"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: Text("Enter your next ToDo"),
                        content: Container(
                          height: 120,
                        ),
                        actions: [TextField()],
                        backgroundColor: Colors.blueAccent[100],
                      ));
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ToDoTile(
              taskName: tasks[index][0],
              onChanged:(value)=>changed(value!, index),
              taskCompleted: tasks[index][1]);
        },
      ),
    );
  }
}
