import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  String taskName="";
  bool taskCompleted=false;
  Function (bool?)? onChanged;
  ToDoTile({required this.taskName,required this.onChanged,required this.taskCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
      child: Container(
          decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Checkbox(value: taskCompleted, onChanged: onChanged),
              Text(taskName),
            ],
          )
      ),
    );
  }
}












