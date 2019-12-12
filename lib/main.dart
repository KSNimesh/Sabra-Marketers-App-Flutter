import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketers_app/login.dart';
// import 'package:marketers_app/ui/screens/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
                  debugShowCheckedModeBanner: false,

      title: 'Sabra Marketers',
      theme: ThemeData(
  
        // is not restarted.
        primarySwatch: Colors.purple
      ),
      home: MyHomePage(title: 'Sabra Marketers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
startTime() async {
    
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }
   Future navigationPage() async {

      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) =>
              LoginPage()));
   
    }
   @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Loading..."),),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:marketers_app/ui/screens/sign_up.dart';
// import 'package:marketers_app/util/state_widget.dart';
// import 'package:marketers_app/ui/theme.dart';
// import 'package:marketers_app/ui/screens/home.dart';
// import 'package:marketers_app/ui/screens/sign_in.dart';
// // import 'package:marketers_app/ui/screens/sign_up.dart';
// import 'package:marketers_app/ui/screens/forgot_password.dart';
// // import 'package:marketers_app/ui/theme.dart';

// class MyApp extends StatelessWidget {
//   MyApp() {
//     //Navigation.initPaths();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MyApp Title',
//       theme: buildTheme(),
//       //onGenerateRoute: Navigation.router.generator,
//       debugShowCheckedModeBanner: false,
//       routes: {
//         '/': (context) => HomeScreen(),
//         '/signin': (context) => SignInScreen(),
//         '/signup': (context) => SignUpScreen(),
//         '/forgot-password': (context) => ForgotPasswordScreen(),
//       },
//     );
//   }
// }

// void main() {
//   StateWidget stateWidget = new StateWidget(
//     child: new MyApp(),
//   );
//   runApp(stateWidget);
// }

