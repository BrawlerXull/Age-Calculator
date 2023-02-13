import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Monday extends StatefulWidget {
  const Monday({Key? key}) : super(key: key);
  @override
  State<Monday> createState() => _MondayState();
}

class _MondayState extends State<Monday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Monday"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.8,
          child: Table(

              border: TableBorder.all(), // Allows to add a border decoration around your table
              children: [
                TableRow(children :[
                  Text('Time',style: TextStyle(fontSize: 30),textAlign: TextAlign.center),
                  Text('Lecture',style: TextStyle(fontSize: 30),textAlign: TextAlign.center),
                ]),
                TableRow(children :[
                  Text('10.30-11.30',style: TextStyle(fontSize: 15),textAlign: TextAlign.center),
                  Text('Maths',style: TextStyle(fontSize: 15),textAlign: TextAlign.center),
                ]),
                TableRow(children :[
                  Text('11.30-01.00',style: TextStyle(fontSize: 15),textAlign: TextAlign.center),
                  Text('English',style: TextStyle(fontSize: 15),textAlign: TextAlign.center),
                ]),
              ]
          ),
        ),
      ),
    );
  }
}
