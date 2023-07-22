import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:fastingapp/secondcapturing/hownayhourssleep.dart';
import 'package:fastingapp/secondcapturing/targetweight.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class yourcurrentweight extends StatefulWidget {
  const yourcurrentweight({super.key});

  @override
  State<yourcurrentweight> createState() => _yourcurrentweightState();
}

class _yourcurrentweightState extends State<yourcurrentweight> {
  int _currentValue = 3;
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
                          top: 25, left: 20, right: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Your Current Weight ?',
                              style: titlecustomTextStyle(),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.15, right: width * 0.1),
                      child: Container(
                          height: 350,
                          width: 200,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 290,
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/Group 1361.png"),
                                  ),
                                ),
                              ),
                              Image(
                                image:
                                    AssetImage("assets/images/Group 1363.png"),
                              ),
                            ],
                          )),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: height * 0.01),
                      child: Column(
                        children: <Widget>[
                          Container(
                              // height: 200,
                              child: Center(
                            child: TextField(
                              style: TextStyle(height: 2.5),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '65 kg',
                                hintStyle: TextStyle(
                                    fontSize: 40,
                                    color: Color.fromARGB(255, 19, 118, 22),
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w700),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )),
                          Container(
                            height: 35,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.green)),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'kg',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'lb',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 18),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    //
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02, left: 20, right: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(targetweight());
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
