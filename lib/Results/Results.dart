import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:Center(
          child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
          children: <Widget>[
         Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                    width: double.infinity,
                    child: 
                   FlatButton( splashColor: Colors.purple[700],
                    highlightColor: Colors.transparent,
                    padding: EdgeInsets.all(20.0),
                    child: Text("Year I"),
                    onPressed: (){},))

          ],
        )) ,
      ),
      
    );
  }
}