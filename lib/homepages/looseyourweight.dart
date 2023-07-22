import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:fastingapp/homepages/eighteen.dart';
import 'package:fastingapp/homepages/forteenplan.dart';
import 'package:fastingapp/homepages/sixteenplan.dart';
import 'package:fastingapp/utils/customcontainer_loosew.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class looseyourweight extends StatelessWidget {
  const looseyourweight({super.key});

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
                    //Get.to(yourexlcusive());
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                          bottom: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Loose your weight with\nhealthy approach',
                                style: titlecustomTextStyle(),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),

                      //login screen header
                      InkWell(
                        onTap: () => Get.to(forteenplan()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: CustomContainerlooseweight(
                            color: Color.fromARGB(255, 236, 237, 220),
                            borderColor: Colors.green,
                            title: '14-10',
                            contentone: '*14 hours fasting',
                            contentwo: '*10 hours eating period',
                            iconcolor: Colors.green,
                            textcolor: Color.fromARGB(255, 21, 94, 23),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(sixteenplan()),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8, left: 5, right: 5),
                          child: CustomContainerlooseweight(
                            color: Color.fromARGB(255, 204, 232, 234),
                            borderColor: Color.fromARGB(255, 161, 122, 245),
                            title: '16-8',
                            contentone: '*16 hours fasting',
                            contentwo: '*8 hours eating period',
                            iconcolor: Colors.green,
                            textcolor: Color.fromARGB(255, 57, 24, 127),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(eighteenplan()),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8, left: 5, right: 5),
                          child: CustomContainerlooseweight(
                            color: Color.fromARGB(255, 200, 201, 183),
                            borderColor: Colors.green,
                            title: '18-6',
                            contentone: '*18 hours fasting',
                            contentwo: '*6 hours eating period',
                            iconcolor: Color.fromARGB(255, 186, 175, 73),
                            textcolor: Color.fromARGB(255, 119, 72, 21),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 5, right: 5),
                        child: CustomContainerlooseweight(
                          color: Color.fromARGB(255, 182, 235, 190),
                          borderColor: Colors.green,
                          title: '20-4',
                          contentone: '*20 hours fasting',
                          contentwo: '*4 hours eating period',
                          iconcolor: Color.fromARGB(255, 232, 125, 82),
                          textcolor: Color.fromARGB(255, 14, 84, 9),
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
