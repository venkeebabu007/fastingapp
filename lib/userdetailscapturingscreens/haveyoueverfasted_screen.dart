import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class haveyoueverfasted extends StatelessWidget {
  const haveyoueverfasted({super.key});

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

                    //login screen header

                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Have you ever \nfasted before ?',
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
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 17, 108, 20),
                                    width: 4),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                'Yes',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 17, 108, 20),
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 17, 108, 20),
                                    width: 4),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                'No',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 17, 108, 20),
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 17, 108, 20),
                                    width: 4),
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                'A bit',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 17, 108, 20),
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: InkWell(
                        onTap: () {
                          // Get.to(whatisyourgender());
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
