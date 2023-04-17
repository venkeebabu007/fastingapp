import 'package:fastingapp/userdetailscapturingscreens/tellus_yourgoal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class continuescreen extends StatelessWidget {
  const continuescreen({super.key});

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
                          const EdgeInsets.only(top: 300, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Before we begin,tell us\nsomething about \nyourelfe',
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

                    Padding(
                      padding:
                          const EdgeInsets.only(top: 150, left: 20, right: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(tellusyourgoal());
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
                                "Continue",
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
