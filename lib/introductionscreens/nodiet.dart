import 'package:fastingapp/signinpages/socialacs.dart';
import 'package:fastingapp/testingfiles/cmtofeetconvertion.dart';
import 'package:fastingapp/userdetailscapturingscreens/contnue_screen.dart';
import 'package:fastingapp/userdetailscapturingscreens/tellus_yourgoal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/custom_text_style.dart';

class nodietscreen extends StatelessWidget {
  const nodietscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Untitled-1.png"),
              fit: BoxFit.fill)),
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.05,
                        left: 20,
                        right: 20,
                        bottom: height * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'No Diet',
                              style: TextStyle(
                                color: Color.fromARGB(255, 6, 119, 10),
                                fontWeight: FontWeight.w900,
                                fontSize: 33,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Segoe UI Italic',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // hello
                    // venki    babu
                    //login screen header
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 190,
                      child: Image.asset(
                        "assets/images/Group 1.png",
                      ),
                    ),

                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'No Calories restrictions.you \ncan eat whatever you\nwant when you are\nnot fasting',
                              style: midlecustomTextStyle(),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Get.to(socialacs());
                        // Get.to(cmtofeet());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.16, left: 20, right: 20),
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
                                "Start Now",
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
                              "Already have an account?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 17, 108, 20),
                                fontSize: 20,
                                decoration: TextDecoration.underline,
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
