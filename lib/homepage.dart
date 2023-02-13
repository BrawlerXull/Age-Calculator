import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Age Calculator"),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Time Table',style: TextStyle(fontSize: 20),),
              ),
              ListTile(
                title: const Text('Monday'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/monday");
                },
              ),
              ListTile(
                title: const Text('Tuesday'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/tuesday");
                },
              ),
              ListTile(
                title: const Text('Wednesday'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Thursday'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Friday'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('To Do List'),
                onTap: () {
                  Navigator.pushNamed(context, "/todo");
                },
              ),

            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Text("Age Calculator",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              SizedBox(height: 60,),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: myController,
                  decoration: InputDecoration(
                    labelText: "Enter your birth year",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
              ),
              TextButton(

                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text that the user has entered by using the
                        // TextEditingController.
                        content: Text("your age is ${2023-int.parse(myController.text)}"),
                      );
                    },
                  );
                },
                child: Text("Click here bitch"),

              )
            ],
          ),
        ));
  }
}
