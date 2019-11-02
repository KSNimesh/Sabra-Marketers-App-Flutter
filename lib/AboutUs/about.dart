import 'package:flutter/material.dart';
import 'package:marketers_app/AboutUs/AboutUs.dart';
import 'package:marketers_app/AboutUs/LecturePannel.dart';
import 'package:marketers_app/HomeScreen.dart';


class About extends StatefulWidget {
  

  static String tag = 'Events';
  @override
  _EventState createState() => new _EventState();
}

class _EventState extends State<About> {
  // tri language
Future<bool> _onWillPop()  async {
    //  Map<String, Map<String, String>> localizedValues = await initializeI18n();
  return Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) =>
          HomeScreen()));


  }

  @override
  Widget build(BuildContext context) {
    return 
    WillPopScope(
      onWillPop: _onWillPop,
  child:  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // actions: <Widget>[
          //     FlatButton(
          //       child: Text(
          //         // MyLocalizations.of(context).language,
          //         style: TextStyle(color: Colors.white),
          //       ),
          //       onPressed: widget.onChangeLanguage,
          //     )
          //   ],
          iconTheme: IconThemeData(
            color: Colors.white, 
          ),
          centerTitle: true,
          title: new Text(
            "About Department",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              )),
          // backgroundColor: Colors.yellow[800],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: [

              Tab(
                text:   "Infomation"
                  ,
                  
              ),
              Tab(
                text:"Lecture pannel"
                 
                      
              ),

             
             
            ],
          ),
        
        ),
        body: TabBarView(
          children: [
            
           
            //info
            Center(child: AboutUs()),
            
            //
            Center(
              child: LecturePannel(),
            ),
          
          ],
        ),
      ),),
    );
  }
}
