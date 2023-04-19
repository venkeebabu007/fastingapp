import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:fastingapp/userdetailscapturingscreens/contnue_screen.dart';
import 'package:fastingapp/userdetailscapturingscreens/tellus_yourgoal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class beginnerfriendly extends StatelessWidget {
  const beginnerfriendly({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.05,
                        left: 20,
                        right: height * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text('Beginner friendly',
                                style: titlecustomTextStyle()),
                          )
                        ],
                      ),
                    ),

                    //login screen header
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: height * 0.3,
                      child: Image.asset(
                        "assets/images/Group 1205.png",
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
                              'By choosing healthy over\nskinny you are choosing\nself-love over\nself-judgement',
                              style: midlecustomTextStyle(),
                              textAlign: TextAlign.center,
                            ),
                            /* style: TextStyle(
                                fontStyle: ,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 6, 119, 10),
                                  fontWeight: FontWeight.bold),*/
                          )
                        ],
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Get.to(tellusyourgoal());
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
