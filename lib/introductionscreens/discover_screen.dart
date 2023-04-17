import 'package:fastingapp/userdetailscapturingscreens/contnue_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class discoverscreen extends StatelessWidget {
  const discoverscreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                              'Discover your love for',
                              style: GoogleFonts.lato(
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
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'FASTING',
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

                    //login screen header
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: Image.asset(
                        "assets/images/Group 15206.png",
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
                              'your search for a diet is over.Reach your \ndesired weight and feel great',
                              style: GoogleFonts.adventPro(
                                  textStyle:
                                      Theme.of(context).textTheme.displayMedium,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(255, 6, 119, 10),
                                  fontWeight: FontWeight.bold),
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
                        Get.to(continuescreen());
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 60, left: 20, right: 20),
                        child: Container(
                          width: 240,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 17, 108, 20),
                              Colors.green,
                              Color.fromARGB(255, 17, 108, 20),
                            ]),
                            //color: Colors.transparent,

                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Start Now",
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
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Container(
                        width: 240,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: Color.fromARGB(255, 17, 108, 20),
                              width: 4),
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
                              "I have already an acount",
                              style: TextStyle(
                                color: Color.fromARGB(255, 17, 108, 20),
                                fontSize: 16,
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
