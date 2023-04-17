import 'package:fastingapp/secondcapturing/hownayhourssleep.dart';
import 'package:fastingapp/secondcapturing/whatisyourmealtime.dart';
import 'package:fastingapp/secondsliderscreens/whatisyouractivitylevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class howearlyyouwant extends StatefulWidget {
  const howearlyyouwant({super.key});

  @override
  State<howearlyyouwant> createState() => _howearlyyouwantState();
}

class _howearlyyouwantState extends State<howearlyyouwant> {
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
                        top: 50,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'How early do you want to ',
                              style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.displayMedium,
                                  fontSize: 25,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromARGB(255, 6, 119, 10),
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, left: 5, right: 5, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'reach your weight goal?',
                              style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.displayMedium,
                                  fontSize: 25,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromARGB(255, 6, 119, 10),
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Present weight",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 11, 72, 13),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "65kg",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 72, 13),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(width: 30),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 28, left: 20, right: 20),
                            child: Text(
                              ">>",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 72, 13),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Target weight",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 11, 72, 13),
                                    fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "58kg",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 72, 13),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
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
                                  "Easy",
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
                                  "Normal",
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
                                  "Hard",
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
                                  "Master",
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
                          Get.to(whatismealtime());
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
