import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:fastingapp/secondcapturing/hownayhourssleep.dart';
import 'package:fastingapp/secondcapturing/wearemakingyourplan.dart';
import 'package:fastingapp/secondcapturing/whatisyourmealtime.dart';
import 'package:fastingapp/secondsliderscreens/whatisyouractivitylevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class anyhealthproblem extends StatefulWidget {
  const anyhealthproblem({super.key});

  @override
  State<anyhealthproblem> createState() => _anyhealthproblemState();
}

class _anyhealthproblemState extends State<anyhealthproblem> {
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
                child: InkWell(
                  onTap: () {
                    Get.to(wearemakingyourplan());
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),

                      //login screen header

                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Any health problems? ',
                                style: titlecustomTextStyle(),
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(255, 11, 72, 13)),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    "I don't have any issue",
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromARGB(255, 11, 72, 13),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(255, 11, 72, 13)),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    "Diabetes",
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromARGB(255, 11, 72, 13),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(255, 11, 72, 13)),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    "Heart disease",
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromARGB(255, 11, 72, 13),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(255, 11, 72, 13)),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    "Blood pressure",
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromARGB(255, 11, 72, 13),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(255, 11, 72, 13)),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    "Anxiety & Stress",
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromARGB(255, 11, 72, 13),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color.fromARGB(255, 11, 72, 13)),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    "Depression",
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromARGB(255, 11, 72, 13),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 80, left: 20, right: 20),
                        child: InkWell(
                          onTap: () {
                            Get.to(wearemakingyourplan());
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
                                  "Create my plan",
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
              ),
            );
          },
        ),
      ),
    );
  }
}
