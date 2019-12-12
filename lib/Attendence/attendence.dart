import 'package:flutter/material.dart';

class Attendence extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Attendence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendence",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Details")

          ],
        ) ,
      ),
      
    );
  }
}