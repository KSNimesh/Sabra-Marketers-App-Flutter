import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: <Widget>[
         
      // Padding(
      //     padding: EdgeInsets.all(5.0),
      //   child: SizedBox(
      //     height: 150.0,
      //     width: 350.0,
      //     child: Carousel(
      //       boxFit: BoxFit.cover,
      //       autoplay: true,
      //       animationCurve: Curves.easeInOutCirc,
      //       animationDuration: Duration(milliseconds: 2000),
      //       dotSize: 5.0,
      //       // dotIncreasedColor: Color(0xFFFF335C),
      //       dotIncreasedColor: Colors.purple,
      //       dotBgColor: Colors.transparent,
      //       dotPosition: DotPosition.bottomCenter,
      //       dotVerticalPadding: 10.0,
      //       showIndicator: true,
      //       indicatorBgPadding: 7.0,
      //       images: [
             
      //         ExactAssetImage("assets/Slider/Image4.jpg"),
      //         ExactAssetImage("assets/Slider/Image2.jpg"),
      //         ExactAssetImage("assets/Slider/Image3.jpg"),
      //         ExactAssetImage("assets/Slider/Image1.jpg"),
      //         ExactAssetImage("assets/Slider/Image5.jpg"),
      //         ExactAssetImage("assets/Slider/Image6.jpg"),


      //       ],
      //     ),
      //   ),
      // ),
      
            Card(elevation: 4.0,
              child: Padding(padding: EdgeInsets.all(5.0),
            child: Text("The Department of Marketing Management  is a young department on a steady growth with a reputation for its innovative course programmes which initiates a research culture in the field of marketing. With our strong commitment to excellence and close links with the industry and professional partners, our graduates are equipped with qualities that employers demand. You too can join our extraordinary marketing management undergraduates who have become significant contributors to their chosen professions."))
            )
          ],
        ),),
      ),
    );
  }
}