// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState(); //arrow method
  //with every change in class state this method createState will be returned to create new state (to show changes)--rebuilding
} //this constructor is the reason of rebuilding the program to show the state of widgets being changes

//this below class takes state from the widget and gives it back to constructor which returns it( to rebuild)
class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

//initialization state of the widget --first state of widget
//it starts from here and then moves to other states
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter app",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  //this below setState changes state of the widget (rebuilds the build)
                  setState(() {
                    counter--;
                    print(counter);
                  });
                },
                child: Text("Subtract")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "$counter",
                style: TextStyle(fontSize: 100),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                    counter++;
                    print(counter);
                  setState(() {
                  
                  });
                },
                child: Text("    Add    "))
          ],
        ),
      ),
    );
  }
}
