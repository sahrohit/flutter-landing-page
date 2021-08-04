import 'package:flutter/material.dart';
import 'package:mobile_app/bottom_nav.dart';
import 'package:mobile_app/first_page.dart';
import 'package:mobile_app/second_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController pagecontroller =
      PageController(initialPage: 0, keepPage: true);

  final _totalDots = 2;

  @override
  Widget build(BuildContext context) {

    void updatePage(int position) {
      setState(() {
        pagecontroller.animateToPage(
          position,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.black87,
        ),
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
            fontSize: 35,
            //color: Colors.deepPurple,
            color: Color.fromRGBO(113, 58, 255, 100),
          ),
          bodyText2: TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              fontSize: 25,
              //color: Colors.deepPurple,
              color: Color.fromRGBO(113, 58, 255, 100)),
              
          button: TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold),
          headline1: TextStyle(
              color: Colors.deepPurple[700],
              fontWeight: FontWeight.bold,
              fontSize: 32,
              height: 1,
              letterSpacing: 1.2),
          headline2: TextStyle(
              color: Colors.deepPurple[700],
              fontWeight: FontWeight.bold,
              fontSize: 28,
              height: 1,
              letterSpacing: 1.2),
          subtitle1: TextStyle(color: Color.fromRGBO(113, 58, 255, 100)),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(250, 250, 250, 100),
          elevation: 0.0,
          title: Stack(
            children: <Widget>[
              AnimatedContainer(
                  curve: Curves.bounceIn,
                  width: double.infinity,
                  duration: const Duration(seconds: 1),
                  child: Align(
                    alignment: Alignment.topCenter,

                    child: SmoothPageIndicator(
                        controller: pagecontroller, // PageController
                        count: _totalDots,
                        effect: ExpandingDotsEffect(
                            spacing: 8.0,
                            radius: 13.0,
                            dotWidth: 25.0,
                            dotHeight: 14.0,
                            paintStyle: PaintingStyle.fill,
                            strokeWidth: 1.5,
                            dotColor: Colors.grey,
                            activeDotColor:
                                Colors.indigo), // your preferred effect
                        onDotClicked: (index) {
                          print(index);
                          updatePage(index.toInt());
                        }),
                  )),
            ],
          ),
        ),
        body: PageView(
          controller: pagecontroller,
          onPageChanged: (index) => {
          },
          children: <Widget>[
            FirstPage(),
            SecondPage(),
          ],
        ),
        bottomNavigationBar: AppBottomNav(),
      ),
    );
  }
}
