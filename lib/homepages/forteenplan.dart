import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:fastingapp/homepages/totalfastingtime.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forteenplan extends StatefulWidget {
  const forteenplan({super.key});

  @override
  State<forteenplan> createState() => _forteenplanState();
}

class _forteenplanState extends State<forteenplan> {
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
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                '14-10',
                                style: titlecustomTextStyle(),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              '14 hours fasting',
                              style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                color: Color.fromARGB(255, 6, 119, 10),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              '10 hours eating period',
                              style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                color: Color.fromARGB(255, 6, 119, 10),
                              ),
                            ),
                          )
                        ],
                      ),

                      //login screen header
                      Container(
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(255, 40, 139, 61),
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
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
                                          fontSize: width * 0.05),
                                    ),
                                    SizedBox(
                                      width: width * 0.33,
                                    ),
                                    Text(
                                      'Today 20.30',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 94, 23),
                                          fontWeight: FontWeight.w600,
                                          fontSize: width * 0.05),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 35.0,
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
                                          fontSize: width * 0.05),
                                    ),
                                    SizedBox(
                                      width: width * 0.07,
                                    ),
                                    Text(
                                      'Tomorrow 10.30',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 94, 23),
                                          fontWeight: FontWeight.w600,
                                          fontSize: width * 0.05),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          Get.to(totalfastingtime());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 60, left: 20, right: 20),
                          child: Container(
                            width: 240,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(255, 17, 108, 20),
                                Colors.green,
                                Color.fromARGB(255, 17, 108, 20),
                              ]),
                              //color: Colors.transparent,

                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Start fasting",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
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
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 40, 139, 61),
                                  width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        ' Prepare for fasting',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    '*Plan Your Meals and Snacks Ahead of Time \n*Stay Hydrated \n*Don’t Dwell on Mistakes or Slip-Ups \n*Choose Foods that You Enjoy \n*Adapt as Needed',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.green),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
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
