import 'package:fastingapp/secondsliderscreens/whatisyouractivitylevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'whatisyouname_screen.dart';

class haveyouever extends StatelessWidget {
  const haveyouever({super.key});

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
                          top: 50, left: 20, right: 20, bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Have you ever Practiced\nintermittent fasting before ?',
                              style: GoogleFonts.adventPro(
                                  textStyle:
                                      Theme.of(context).textTheme.displayMedium,
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(255, 6, 119, 10),
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, bottom: 20),
                          child: Container(
                            width: 320,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 28,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "this is my first time",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Container(
                            width: 320,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 28,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "I have tried ocasionally",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Container(
                            width: 320,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 2,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Fasting has become my way of life",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 180, left: 20, right: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(whatisyouractivitylevel());
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
