// import 'dart:io';
// import 'package:carousel_pro/carousel_pro.dart';
// import 'package:flutter/material.dart';
// import 'package:marketers_app/AboutUs/about.dart';
// import 'package:marketers_app/Animation/FadeAnimation.dart';
// import 'package:marketers_app/login.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }


// class _HomeScreenState extends State<HomeScreen> {
// //Exit_popup
//   Future<bool> onBackPress() {
//     openDialog();
//     return Future.value(false);
//   }
// Future<Null> openDialog() async {
//     switch (await showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return SimpleDialog(
//               shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(5.0))),
            
//             children: <Widget>[
//               Container(
//                 color: Colors.white,
//                 padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
//                 height: 90.0,
//                 child: Column(
//                   children: <Widget>[
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         Container(
//                           child: Icon(
//                             Icons.exit_to_app,
//                             size: 30.0,
//                             color: Colors.yellow[800],
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 8.0),
//                           child: Text("Exit App"
//                        ,
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.normal),
//                           )
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 5.0,),
//                     exitdialogbody()
                  
//                   ],
//                 ),
//               ),

//                Row(
                
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   mainAxisSize: MainAxisSize.max,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: <Widget>[
                                   
//                                    Expanded(child: Container(),flex: 1,),
                               
//                                     Expanded(
                                      
//                                       flex: 6,
//                                       child: Container(
//                                         height: 40,
//                                         child:
//                                            FlatButton(
//                                                 shape:
//                                                     const RoundedRectangleBorder(
                                                      
//                                                   side: BorderSide(
//                                                       color: Colors.black12),
//                                                   borderRadius:
//                                                       BorderRadius.all(
//                                                           Radius.circular(
//                                                               5.0)),
//                                                 ),
//                                                 onPressed: ()  {
//                                                    Navigator.pop(context, 0);
//                                                 },
//                                                 child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     children: <Widget>[
//                                                                 Container(
//                                       child: Icon(
//                                         Icons.cancel,
//                                         color: Colors.redAccent,
//                                       ),
                                     
//                                     ),
//                                                       SizedBox(
//                                                         width: 3.0,
//                                                       ),
//                                                     Text("No")
                                                      
//                                                     ]),
//                                                 color: Colors.grey[200],
//                                               ),
//                                       ),
//                                     ),

//                                     SizedBox(
//                                       width: 5.0,
//                                     ),
//                                     Expanded(
//                                         flex: 6,
//                                         child: Container(
//                                           height: 40,
//                                           child: FlatButton(
//                                             shape: const RoundedRectangleBorder(
//                                               side: BorderSide(
//                                                   color: Colors.black12),
//                                               borderRadius: BorderRadius.all(
//                                                   Radius.circular(5.0)),
//                                             ),
//                                             onPressed: ()  {
//                                               Navigator.pop(context, 1);
//                                              },
//                                             child: Row(
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     children: <Widget>[
//                                                      Container(
//                             child: Icon(
//                               Icons.check_circle,
//                               color: Colors.green[400],
//                             ),
//                           ),
//                                                       SizedBox(
//                                                         width: 3.0,
//                                                       ),
//                                                       // "yes"
//                                                     Text("Yes")
//                                                     ]),
//                                            color: Colors.grey[200],
//                                           ),
//                                         )),
//                                    Expanded(child: Container(),flex: 1,),

//                                   ],
//                                 ),
//               SizedBox(
//                 height: 10,
//               ),
//             ],
//           );
//         })) {
//       case 0:
//         break;
//       case 1:
//         exit(0);
//         break;
//     }
//   }
//   exitdialogbody() => Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[

//           Align(
//             alignment: Alignment.center,
//             child: new Text(
//               'Are you sure?',
             
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
        
//         ],
//       );
// //image silder



//   @override
//   Widget build(BuildContext context) {
//      Size deviceSize = MediaQuery.of(context).size;

//       return new WillPopScope(
//       onWillPop: onBackPress,
//       child: Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//         centerTitle: true,
//       ),
//     drawer: new Drawer(
//           child: new ListView(
//             children: <Widget>[
//               new UserAccountsDrawerHeader(
//                 accountName: Text("Shadeeka Niesh"),
//                 accountEmail: Text("Shadeeka94@gmail.com"),
//                 decoration: new BoxDecoration(
//                   color: Colors.yellow[800],
//                   image: new DecorationImage(
//                     image: new ExactAssetImage(
//                       "assets/mgtbacks.jpg",
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 currentAccountPicture: Container(
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                           fit: BoxFit.fill, image: NetworkImage("https://avatars1.githubusercontent.com/u/38817146?s=400&u=06dad53e634dbcdbec60bb807338f1dbfe8139ca&v=4"))),
//                 ),
//               ),
       
//               ListTile(
//                 title: Text(
//                  'E-Learning'
//                 ),
//                 leading: Icon(Icons.language),
//                 onTap: () async {
//                   Navigator.of(context).pop();
                
//                 },
//               ),
//               ListTile(
//                 title: Text(
//                   "Results"
//                 ),
                
//                 leading: Icon(Icons.web),
//                 onTap: () async {
//                   Navigator.of(context).pop();
                  
//                   // Navigator.of(context).push(MaterialPageRoute(
//                   //     builder: (BuildContext context) => Reportproblem(
                            
//                   //         )));
//                 },
//               ),
              
//                  ListTile(
//                 title: Text(
//                   "Attendence"
//                 ),
                
//                 leading: Icon(Icons.insert_comment),
//                 onTap: () async {
//                   Navigator.of(context).pop();
                  
//                   // Navigator.of(context).push(MaterialPageRoute(
//                   //     builder: (BuildContext context) => Reportproblem(
                            
//                   //         )));
//                 },
//               ),

//               ListTile(
//                 title: Text(
//                  'Lecture Notes'
//                 ),
            
//                 leading: Icon(Icons.chat),
//                 onTap: () {
//                   Navigator.of(context).pop();
//                   // Navigator.of(context).push(MaterialPageRoute(
//                   //     builder: (BuildContext context) =>
//                   //         DrawerMsg(this.widget.onChangeLanguage)));
//                 },
//               ),
//               ListTile(
//                 title: Text(
//                 "Notification"
//                 ),
//                 // Text("Events"),
//                 leading: Icon(Icons.notifications),
//                 onTap: () {
//                   Navigator.of(context).pop();
//                   // Navigator.of(context).push(MaterialPageRoute(
//                   //     builder: (BuildContext context) =>
//                   //         Events()));

            
//                 },
//               ),
              
              
//                 ListTile(
//                 title: Text(
//                  'About Us'
//                 ),
//                 leading: Icon(Icons.info),
//                 onTap: () async {
//                   Navigator.of(context).pop();
                
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (BuildContext context) =>
//                           About()));
                
//                 },
//               ),
//               ListTile(
                
//               title: Text("Sign out"),
//                 leading: Icon(Icons.exit_to_app),
//                 onTap: () async {
//                   Navigator.of(context).pop();
//                      Navigator.of(context).push(MaterialPageRoute(
//                                 builder: (BuildContext context) =>
//                                     LoginPage()));
//                 },
//               ),
//             ],
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
          
//            Padding(
//           padding: EdgeInsets.all(5.0),
//         child: SizedBox(
//             height: deviceSize.height / 4,
          
//           child: Carousel(
//             boxFit: BoxFit.cover,
//             autoplay: true,
//             animationCurve: Curves.easeInOutCirc,
//             animationDuration: Duration(milliseconds: 2000),
//             dotSize: 5.0,
//             // dotIncreasedColor: Color(0xFFFF335C),
//             dotIncreasedColor: Colors.purple,
//             dotBgColor: Colors.transparent,
//             dotPosition: DotPosition.bottomCenter,
//             dotVerticalPadding: 10.0,
//             showIndicator: true,
//             indicatorBgPadding: 7.0,
//             images: [
             
//               ExactAssetImage("assets/Slider/Image4.jpg"),
//               ExactAssetImage("assets/Slider/Image2.jpg"),
//               ExactAssetImage("assets/Slider/Image3.jpg"),
//               ExactAssetImage("assets/Slider/Image1.jpg"),
//               ExactAssetImage("assets/Slider/Image5.jpg"),
//               ExactAssetImage("assets/Slider/Image6.jpg"),


//             ],
//           ),
//         ),
//       ),
      
//           Container(
//             height: deviceSize.height / 2,
//             // height: 300,
//             child: Stack(
//               children: <Widget>[
//   OrientationBuilder(
          
//       builder: (context, orientation) {
//         int count = 2;
//         if(orientation == Orientation.landscape){
//           count = 4;
//         }
//         return GridView.count(
//           crossAxisCount: count,
//           children: <Widget>[
            
// //E-learning
//   FadeAnimation(
//                     1,
// Padding(padding: EdgeInsets.all(10.0),child: 
     
//      Card(
//        elevation: 5.0, 
//        child: 
//            FlatButton(
//              shape: const RoundedRectangleBorder(
//                                     side: BorderSide(color: Colors.white),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10.0)),
//                                   ),
//                     splashColor: Colors.purple[500],
//                     highlightColor: Colors.transparent,
//                     padding: EdgeInsets.all(5.0),
                    
//                     onPressed: () async {
                     
                     
//                     },
//                     color: Colors.white,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                     Icon(Icons.language,size: 35.0,),
//                         // Image.asset(
//                         //   "assets/bottom/events.png",
//                         //   height: 35.0,
//                         //   width: 35.0,
//                         // ),
//                         SizedBox(height: 16.0),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 1.0),
//                           child: Text("E-Learning",
//                             // MyLocalizations.of(context).eventbtn,
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontFamily: 'Roboto',
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   ),),),

// //results   
//   FadeAnimation(
//                     1,          
//            Padding(padding: EdgeInsets.all(10.0),child: 
            
//      Card(
//        elevation: 5.0, 
//        child: 
//            FlatButton(
//              shape: const RoundedRectangleBorder(
//                                     side: BorderSide(color: Colors.white),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10.0)),
//                                   ),
//                     splashColor: Colors.purple[500],
//                     highlightColor: Colors.transparent,
//                     padding: EdgeInsets.all(5.0),
//                     onPressed: () async {
                     
                     
//                     },
//                     color: Colors.white,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                           Icon(Icons.web,size: 35.0,),
//                         // Image.asset(
//                         //   "assets/bottom/events.png",
//                         //   height: 35.0,
//                         //   width: 35.0,
//                         // ),
//                         SizedBox(height: 16.0),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 1.0),
//                           child: Text("Results",
//                             // MyLocalizations.of(context).eventbtn,
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontFamily: 'Roboto',
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),),),),
//   FadeAnimation(
//                     1.5,
//                   Padding(padding: EdgeInsets.only(left:10.0,right: 10.0,bottom: 10.0),child: 
// //lecture notes
           
//      Card(
//        elevation: 5.0, 
//        child: 
//            FlatButton(
//              shape: const RoundedRectangleBorder(
//                                     side: BorderSide(color: Colors.white),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10.0)),
//                                   ),
//                     splashColor: Colors.purple[500],
//                     highlightColor: Colors.transparent,
//                     padding: EdgeInsets.all(5.0),
//                     onPressed: () async {
                     
                     
//                     },
//                     color: Colors.white,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         Icon(Icons.chat,size: 35.0,),
//                         // Image.asset(
//                         //   "assets/bottom/events.png",
//                         //   height: 35.0,
//                         //   width: 35.0,
//                         // ),
//                         SizedBox(height: 16.0),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 1.0),
//                           child: Text("Lecture Notes",
//                             // MyLocalizations.of(context).eventbtn,
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontFamily: 'Roboto',
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),),),),

//                     FadeAnimation(
//                     1.5,
//                 Padding(padding: EdgeInsets.only(left:10.0,right: 10.0,bottom: 10.0),child: 

       
//      Card(
//        elevation: 5.0, 
//        child: 
//            FlatButton(
//              shape: const RoundedRectangleBorder(
//                                     side: BorderSide(color: Colors.white),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(10.0)),
//                                   ),
//                     splashColor: Colors.purple[500],
//                     highlightColor: Colors.transparent,
//                     padding: EdgeInsets.all(5.0),
//                     onPressed: () async {
                     
                     
//                     },
//                     color: Colors.white,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         Icon(Icons.assignment_late,size: 35.0,),
//                         // Image.asset(
//                         //   "assets/bottom/events.png",
//                         //   height: 35.0,
//                         //   width: 35.0,
//                         // ),
//                         SizedBox(height: 16.0),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 1.0),
//                           child: Text("Attendence",
//                             // MyLocalizations.of(context).eventbtn,
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontFamily: 'Roboto',
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),),)),
                  
//           ],
//         );
//       },
//     ),
               
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
               
              
//               ],
//             ),
//           )
//         ],
//       )),
        
       
       
//       ),
//     );
//   }
// }

