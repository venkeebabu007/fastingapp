import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class whatisyourheight extends StatelessWidget {
  const whatisyourheight({super.key});

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
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'What is your height ?',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          // height: height * 0.14,
                          width: width * 0.3,
                          //
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 21, 92, 23),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'cm',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          // height: height * 0.14,
                          width: width * 0.3,
                          //
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 21, 92, 23)),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'ft',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 21, 92, 23),
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: height * 0.4,
                          width: width * 0.1,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Group 1318.png"),
                                  fit: BoxFit.fill)),
                          //color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: height * 0.4,
                            width: width * 0.28,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/Group 1361.png"),
                                    fit: BoxFit.fill)),
                            //color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Padding(
                      padding:
                          const EdgeInsets.only(top: 150, left: 20, right: 20),
                      child: InkWell(
                        onTap: () {
                          //Get.to(whatisyourheight());
                        },
                        child: Container(
                          width: 240,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 17, 108, 20),
                              Colors.green,
                              Color.fromARGB(255, 17, 108, 20),
                            ]),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
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
