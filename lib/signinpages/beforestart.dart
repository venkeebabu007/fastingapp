import 'package:fastingapp/userdetailscapturingscreens/contnue_screen.dart';
import 'package:fastingapp/userdetailscapturingscreens/tellus_yourgoal_screen.dart';
import 'package:fastingapp/utils/customcontainer_loosew.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/custom_text_style.dart';

class beforestart extends StatelessWidget {
  const beforestart({super.key});

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
                    InkWell(
                      onTap: () {
                        // Get.to(tellusyourgoal());
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            child: Image.asset(
                              "assets/images/happylogo.png",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'Before we begin, tell\nus something\nabout yourself.......',
                                  style: midlecustomTextStyle(),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
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
                                "Continue",
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
