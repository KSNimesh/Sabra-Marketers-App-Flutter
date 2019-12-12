import 'package:flutter/material.dart';
import 'package:marketers_app/Animation/FadeAnimation.dart';
import 'package:marketers_app/widgets/Homescreen2.dart';
// import 'package:marketers_app/HomeScreen.dart';
// import 'package:marketers_app/widgets/testmain.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));

class LoginPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 300,
            child: Stack(
              children: <Widget>[
 
                Positioned(
                  top: -30,
                  height: 300,
                  width: width,
                  child: FadeAnimation(
                      1,
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/background.png'),
                                fit: BoxFit.fill)),
                      )),
                ),

                
                Positioned(
                  height: 300,
                  width: width + 20,
                  child: FadeAnimation(
                      1.3,
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/background-2.png'),
                                fit: BoxFit.fill)),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(
                    1.5,
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Color.fromRGBO(49, 39, 79, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    )),
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    1.7,
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(196, 135, 198, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            )
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]))),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "E-mail",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                    1.7,
                    Center(
                        child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color.fromRGBO(196, 135, 198, 1)),
                    ))),
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    1.9,
                    Container(
                      height: 40,
                      // margin: EdgeInsets.symmetric(horizontal: 40),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(50),
                      //   color: Color.fromRGBO(49, 39, 79, 1),
                      // ),
                      child: Center(
                        child: SizedBox(
                width: 200,
                height: 50.0,
                        
                        child:FlatButton(
                          
                          color: Color.fromRGBO(49, 39, 79, 1),
                             shape: const RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.black12),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50.0)),
                                            ),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyMain()));
                          },
                        ),),
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                    2,
                    Center(
                        child: Text(
                      "Create Account",
                      style: TextStyle(color: Color.fromRGBO(49, 39, 79, .6)),
                    ))),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
