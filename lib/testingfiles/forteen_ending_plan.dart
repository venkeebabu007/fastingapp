import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'dart:ffi';
import 'package:intl/intl.dart';
import 'dart:async';

class ForteenPlanEndPage extends StatefulWidget {
  const ForteenPlanEndPage({Key? key}) : super(key: key);

  @override
  State<ForteenPlanEndPage> createState() => _ForteenPlanEndPageState();
}

class _ForteenPlanEndPageState extends State<ForteenPlanEndPage> {
  final String _sessionendedtime = '00';

  Timer? _timer;
  int _countdownHours = 14;
  int _countdownMinutes = 0;
  int _countdownSeconds = 0;
  int _totalcountdownseconds = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_countdownSeconds > 0) {
          setState(() {
            _countdownSeconds--;
          });
        } else {
          if (_countdownMinutes > 0) {
            setState(() {
              _countdownMinutes--;
              _countdownSeconds = 59;
            });
          } else {
            if (_countdownHours > 0) {
              setState(() {
                _countdownHours--;
                _countdownMinutes = 59;
                _countdownSeconds = 59;
              });
            } else {
              timer.cancel();
            }
          }
        }
      },
    );
  }

  void stopTimer() {
    setState() {
      _timer!.cancel();
    }
  }

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
    String strDigits(int n) => n.toString().padLeft(2, '0');

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
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: width * 0.9,
                          height: height * 0.35,
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 40, 139, 61),
                                  width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(500))),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 10),
                                /* FloatingActionButton.small(
                                  onPressed: startTimer,
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),*/
                                SizedBox(height: 20),
                                Text(
                                  '$_countdownHours : $_countdownMinutes : $_countdownSeconds',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.green),
                                ),
                                SizedBox(height: 20),
                                FloatingActionButton.small(
                                  backgroundColor: Colors.green,
                                  onPressed: () {
                                    _timer!.cancel();
                                    setState(() {
                                      _countdownHours = 14;
                                      _countdownMinutes = 00;
                                      _countdownSeconds = 00;
                                    });
                                    startTimer();
                                  },
                                  child: const Icon(
                                    Icons.restart_alt,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Reset',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 44, 120, 47),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          stopTimer();
                          //context.router.push(const ForteenTotalFastingRoute());
                          showConfirmationDialog(context);

                          _totalcountdownseconds = _countdownHours * 60 * 60 +
                              _countdownMinutes * 60 +
                              _countdownSeconds;
                          print(_totalcountdownseconds);

                          _timer!.cancel();
                          // Get.to(totalfastingtime());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
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
                            child: const Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "End fasting",
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
                      SizedBox(
                        height: height * 0.08,
                      ),
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
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.green,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 212, 240, 86),
          onTap: _onItemTapped,
          selectedIconTheme: IconThemeData(size: 32),
        ),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
  String _textFieldValue = '';
  Future showConfirmationDialog(BuildContext context) async {
    TextEditingController textEditingController = TextEditingController();
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Please Conform Your Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Weight after this session?',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Weight should not be Empty';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          _textFieldValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          // content: Text('Are you sure you want to proceed?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context)
                    .pop(false); // Return false if user cancels
              },
            ),
            TextButton(
              child: Text('Proceed'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Form is valid, continue with further actions
                  // context.router.push(const ForteenTotalFastingRoute());
                  Navigator.of(context).pop(false);
                  // You can use the _textFieldValue variable to access the field value
                }
                //Navigator.of(context).pop(true); // Return true if user proceeds
              },
            ),
          ],
        );
      },
    );
  }
}
