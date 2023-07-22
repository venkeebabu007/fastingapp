import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:fastingapp/secondcapturing/yourexclusive.dart';
import 'package:fastingapp/userdetailscapturingscreens/contnue_screen.dart';
import 'package:fastingapp/userdetailscapturingscreens/tellus_yourgoal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class mealshome extends StatelessWidget {
  const mealshome({super.key});

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
                child: InkWell(
                  onTap: () {
                    // Get.to(yourexlcusive());
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 20,
                          right: 20,
                          bottom: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Meals',
                                style: titlecustomTextStyle(),
                              ),
                            )
                          ],
                        ),
                      ),

                      //login screen header
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: height * 0.2,
                        child: Image.asset(
                          "assets/meals/Group 2495.png",
                        ),
                      ),
                      /* SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: height * 0.17,
                              child: Image.asset(
                                "assets/bodydetox/Group 2879.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: height * 0.17,
                              child: Image.asset(
                                "assets/bodydetox/Group 2969.png",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: height * 0.17,
                              child: Image.asset(
                                "assets/bodydetox/Group 2970.png",
                              ),
                            ),
                          ],
                        ),
                      ),*/
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
