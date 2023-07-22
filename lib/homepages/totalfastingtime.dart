import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:flutter/material.dart';

class totalfastingtime extends StatefulWidget {
  const totalfastingtime({super.key});

  @override
  State<totalfastingtime> createState() => _totalfastingtimeState();
}

class _totalfastingtimeState extends State<totalfastingtime> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Untitled-1.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, cons) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: cons.maxHeight,
              ),
              child: SingleChildScrollView(
                child: InkWell(
                  onTap: () {
                    // Get.to(yourexlcusive());
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),

                      //login screen header
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: height * 0.3,
                          // width: width * 0.7,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 14, 107, 19),
                              borderRadius: BorderRadius.circular(30)),

                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Total fasting time',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '5 Hours 18 Minutes',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30, left: 30, right: 30, bottom: 25),
                                child: Container(
                                  // width: width * 0.9,
                                  // height: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 40, 139, 61),
                                          width: 2),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.fiber_manual_record_sharp,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                ' Start',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: width * 0.04),
                                              ),
                                              SizedBox(
                                                width: width * 0.28,
                                              ),
                                              Text(
                                                'Today 20.30',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 21, 94, 23),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: width * 0.04),
                                              )
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Container(
                                                height: height * 0.03,
                                                width: 4.0,
                                                color: Colors.black,
                                                margin: const EdgeInsets.only(
                                                    left: 10.0, right: 10.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.fiber_manual_record_sharp,
                                                color: Colors.red,
                                              ),
                                              Text(
                                                'End(Expected)',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: width * 0.04),
                                              ),
                                              SizedBox(
                                                width: width * 0.07,
                                              ),
                                              Text(
                                                'Tomorrow 1.48',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 21, 94, 23),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: width * 0.04),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: width * 0.9,
                          height: height * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 40, 139, 61),
                                  width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    ' How did you feel',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 35, 11),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 19),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image(
                                    image: AssetImage(
                                        "assets/images/rating/Group 2878.png"),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Container(
                                    height: 80,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/rating/Group 2892.png"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Image(
                                    image: AssetImage(
                                        "assets/images/rating/Group 2897.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Current Weight',
                            style: TextStyle(
                                color: Color.fromARGB(255, 39, 135, 42),
                                fontWeight: FontWeight.w900,
                                fontSize: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
