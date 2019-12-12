import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:marketers_app/AboutUs/about.dart';
import 'package:marketers_app/Animation/FadeAnimation.dart';
import 'package:marketers_app/Attendence/attendence.dart';
import 'package:marketers_app/Results/Results.dart';
import 'package:marketers_app/login.dart';

void main() => runApp(MyMain());

class MyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main Menu',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    
    Color primaryColor = Color.fromRGBO(126, 0, 126, 3);

    return Scaffold(
          key: _scaffoldKey,
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
       drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text("Shadeeka Nimesh"),
                accountEmail: Text("Shadeeka94@gmail.com"),
                decoration: new BoxDecoration(
                  color: Colors.yellow[800],
                  image: new DecorationImage(
                    
                    image: new ExactAssetImage(
                      "assets/drawerBack.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill, image: NetworkImage("https://avatars1.githubusercontent.com/u/38817146?s=400&u=06dad53e634dbcdbec60bb807338f1dbfe8139ca&v=4"))),
                ),
              ),
       
              ListTile(
                title: Text(
                 'E-Learning'
                ),
                leading: Icon(Icons.language),
                onTap: () async {
                  Navigator.of(context).pop();
                
                },
              ),
              ListTile(
                title: Text(
                  "Results"
                ),
                
                leading: Icon(Icons.web),
                onTap: () async {
                  Navigator.of(context).pop();
                  
                  Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) =>
              Results()));
                },
              ),
              
                 ListTile(
                title: Text(
                  "Attendence"
                ),
                
                leading: Icon(Icons.insert_comment),
                onTap: () async {
                  Navigator.of(context).pop();
                  
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Attendence()));
                },
              ),

              ListTile(
                title: Text(
                 'Lecture Notes'
                ),
            
                leading: Icon(Icons.chat),
                onTap: () {
                  Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) =>
                  //         DrawerMsg(this.widget.onChangeLanguage)));
                },
              ),
              ListTile(
                title: Text(
                "Notification"
                ),
                // Text("Events"),
                leading: Icon(Icons.notifications),
                onTap: () {
                  Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) =>
                  //         Events()));

            
                },
              ),
              
              
                ListTile(
                title: Text(
                 'About Us'
                ),
                leading: Icon(Icons.info),
                onTap: () async {
                  Navigator.of(context).pop();
                
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          About()));
                
                },
              ),
              ListTile(
                
              title: Text("Sign out"),
                leading: Icon(Icons.exit_to_app),
                onTap: () async {
                  Navigator.of(context).pop();
                     Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LoginPage()));
                },
              ),
            ],
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryColor, border: Border.all(color: primaryColor)),
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {

                          _scaffoldKey.currentState.openDrawer();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: 550.0,
                    decoration: BoxDecoration(color: primaryColor),
                  ),
                ),
                Padding(
                 
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
           height: 130.0,
           width: 300.0,
          // width: double.infinity,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.easeInOutCirc,
            animationDuration: Duration(milliseconds: 2000),
            dotSize: 5.0,
            // dotIncreasedColor: Color(0xFFFF335C),
            dotIncreasedColor: Colors.purple,
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomCenter,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
             
              ExactAssetImage("assets/Slider/Image4.jpg"),
              ExactAssetImage("assets/Slider/Image2.jpg"),
              ExactAssetImage("assets/Slider/Image3.jpg"),
              ExactAssetImage("assets/Slider/Image1.jpg"),
              ExactAssetImage("assets/Slider/Image5.jpg"),
              ExactAssetImage("assets/Slider/Image6.jpg"),


            ],
          ),
        ),
                        
                        ],
                      ),
                   
                    ],
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(top: 130.0, right: 25.0, left: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 420.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 15.0)
                        ]),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                      1,
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.purple.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.language),
                                      color: Colors.purple,
                                      iconSize: 40.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('E-learning',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.web),
                                      color: Colors.blue,
                                      iconSize: 40.0,
                                      onPressed: () {
                                        Navigator.of(context).push(MaterialPageRoute(
                                       builder: (BuildContext context) => Results()));
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Results',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              
                            ],
                          ),
                        ),),
                        FadeAnimation(
                      1.4,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.orange.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.receipt),
                                      color: Colors.orange,
                                      iconSize: 40.0,
                                      onPressed: () {
                                        Navigator.of(context).push(MaterialPageRoute(
                                       builder: (BuildContext context) => Attendence()));

                                      },
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Attendence',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.pink.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.note),
                                      color: Colors.pink,
                                      iconSize: 40.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Lecture Notes',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              
                            ],
                          ),
                        ),),
       FadeAnimation(
                      1.8,
                          Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                             Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.purpleAccent.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.library_books),
                                      color: Colors.purpleAccent,
                                      iconSize: 40.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('References',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.deepPurple.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.book),
                                      color: Colors.deepPurple,
                                      iconSize: 45.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Information',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              )
                              
                            ],
                          ),
                        ),
                        
       ),
                        
                        // SizedBox(height: 15.0),
                        // Divider(),
                        // SizedBox(height: 15.0),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 25.0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: <Widget>[
                        //       Expanded(
                        //         child: Text(
                        //           'Lorem ipsum dolor sit amet dan aku tan moyan',
                        //           textAlign: TextAlign.left,
                        //           style: TextStyle(
                        //               color: Colors.grey,
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       ),
                        //       SizedBox(width: 40.0),
                        //       Material(
                        //         borderRadius: BorderRadius.circular(100.0),
                        //         color: Colors.blueAccent.withOpacity(0.1),
                        //         child: IconButton(
                        //           icon: Icon(Icons.arrow_forward_ios),
                        //           color: Colors.blueAccent,
                        //           onPressed: () {},
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            FadeAnimation(2.0, 
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Text(
                'Upcoming',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),),
            FadeAnimation(2.0, 
            Padding(
              padding: EdgeInsets.only(left: 35.0, bottom: 25.0),
              child: Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    UpcomingCard(
                      title: 'New Event',
                      value: 001,
                      color: Colors.purple,
                    ),
                    UpcomingCard(
                      title: 'Test Data',
                      value: 002,
                      color: Colors.blue,
                    ),
                    UpcomingCard(
                      title: 'Test Data',
                      value: 003,
                      color: Colors.orange,
                    ),
                    UpcomingCard(
                      title: 'Test data',
                      value: 003,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 390.0 - 200);
    path.quadraticBezierTo(size.width / 2, 280, size.width, 390.0 - 200);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class UpcomingCard extends StatelessWidget {
  final String title;
  final double value;
  final Color color;

  UpcomingCard({this.title, this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        width: 120.0,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 30.0),
              Text('$value',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
