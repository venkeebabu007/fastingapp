import 'package:fastingapp/introductionscreens/bigginnerfriendly.dart';
import 'package:fastingapp/introductionscreens/effectivel_safe_screen.dart';
import 'package:fastingapp/introductionscreens/natural_healthy_screen.dart';
import 'package:fastingapp/introductionscreens/nodiet.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class listofintroductionscreens extends StatelessWidget {
  // const listofintroductionscreens({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: IntroductionScreen(
      rawPages: [
        nodietscreen(),
        naturalandhelthy(),
        effectiveandsafe(),
        beginnerfriendly(),
        // discoverscreen(),
        // scientificallyprov(),
        //yourpersonal(),
        //trackyourfasts(),
        //realSuccessstories()
      ],
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color.fromARGB(255, 197, 224, 198),
        activeSize: Size(20.0, 20.0),
        activeColor: Color.fromARGB(255, 13, 78, 15),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      showDoneButton: false,
      showSkipButton: false,
      showNextButton: false,
      // dotsContainerDecorator: BoxDecoration(color: Colors.red),
      controlsPadding: EdgeInsets.only(bottom: height * 0.2),
    ));
  }
}
