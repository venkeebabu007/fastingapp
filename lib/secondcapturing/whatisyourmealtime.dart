import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:fastingapp/secondcapturing/anyhealthproblem.dart';
import 'package:fastingapp/secondcapturing/hownayhourssleep.dart';
import 'package:fastingapp/secondcapturing/targetweight.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter/cupertino.dart' as cupertino;

class whatismealtime extends StatefulWidget {
  const whatismealtime({super.key});

  @override
  State<whatismealtime> createState() => _whatismealtimeState();
}

class _whatismealtimeState extends State<whatismealtime> {
  //int _currentValue = 3;
  DateTime _selectedDate = DateTime.now();
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),

                    //login screen header

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 50, left: 20, right: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'What is your meal time',
                              style: titlecustomTextStyle(),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Image.asset(
                        "assets/images/Group 1392.png",
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                              // height: 200,
                              child: Center(
                            child: Text(
                              'I usually have my dinner at',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 19, 118, 22),
                                  //decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w700),
                            ),
                          )),
                          Container(
                            height: 130,
                            // width: 200,
                            decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(25),
                                // border: Border.all(color: Colors.green)
                                ),
                            child: Center(
                              child: Container(
                                child: cupertino.CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.time,
                                  use24hFormat: true,
                                  initialDateTime: _selectedDate,
                                  onDateTimeChanged: (DateTime newDate) {
                                    setState(() {
                                      _selectedDate = newDate;
                                    });
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                              // height: 200,
                              child: Center(
                            child: Text(
                              'I usually have my breakfast at',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 19, 118, 22),
                                  //decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w700),
                            ),
                          )),
                          Container(
                            height: 130,
                            // width: 200,
                            decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(25),
                                // border: Border.all(color: Colors.green)
                                ),
                            child: Center(
                              child: Container(
                                child: cupertino.CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.time,
                                  use24hFormat: true,
                                  initialDateTime: _selectedDate,
                                  onDateTimeChanged: (DateTime newDate) {
                                    setState(() {
                                      _selectedDate = newDate;
                                    });
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    //
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(anyhealthproblem());
                        },
                        child: Container(
                          width: 240,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 17, 108, 20),
                              Colors.green,
                              Color.fromARGB(255, 17, 108, 20),
                            ]),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Next",
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
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        // width: 240,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        // Border.all(color: Colors.green, width: 4),
                        child: InkWell(
                          /* onTap: () {
                                            if (formKey.currentState!
                                                .validate()) {
                                            //  loginUserNow();
                                            }
                                          },*/
                          borderRadius: BorderRadius.circular(30),
                          customBorder:
                              Border.all(color: Colors.green, width: 4),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 28,
                            ),
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                color: Color.fromARGB(255, 17, 108, 20),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
