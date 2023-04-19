import 'package:fastingapp/secondcapturing/hownayhourssleep.dart';
import 'package:fastingapp/secondcapturing/howoldareyou.dart';
import 'package:fastingapp/secondsliderscreens/whatisyouractivitylevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class whatisyourgender extends StatelessWidget {
  const whatisyourgender({super.key});

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
                    Get.to(howoldareyou());
                  },
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
                                'What is your gender ?',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 6, 119, 10),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Segoe UI Italic',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50, bottom: 10),
                            child: Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 4),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 28,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.male,
                                      size: 30,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.pink, width: 4),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 28,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.female,
                                      size: 30,
                                      color: Colors.pink,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                        color: Colors.pink,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Container(
                              width: 300,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.green, width: 4),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 28,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 30,
                                      child: Stack(children: [
                                        Icon(
                                          Icons.female,
                                          size: 30,
                                          color: Colors.pink,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 140, left: 10),
                                          child: Icon(
                                            Icons.male,
                                            size: 30,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Others",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 180, left: 20, right: 20),
                        child: InkWell(
                          onTap: () {
                            Get.to(howoldareyou());
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
              ),
            );
          },
        ),
      ),
    );
  }
}
