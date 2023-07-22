import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

const List<Widget> fruits = <Widget>[
  Text('cm'),
  Text('ft'),
  // Text('Orange')
];

class WhatisYourHeightPage extends StatefulWidget {
  const WhatisYourHeightPage({Key? key}) : super(key: key);

  @override
  State<WhatisYourHeightPage> createState() => _WhatisYourHeightPageState();

  static GlobalKey<FormState> _heightScreenFormKey = GlobalKey<FormState>();
}

class _WhatisYourHeightPageState extends State<WhatisYourHeightPage> {
  double userheight = 180.0;
  final List<bool> _selectedFruits = <bool>[true, false];
  bool isCmToFeet = true;
  double heightInCm = 0;
  double heightInFeet = 0;
  String strhegheightcm = '';
  String strhegheightft = '';

  final TextEditingController _hietformfeeldcontroller =
      TextEditingController();
  final TextEditingController _hietformfeeldcontrollertwo =
      TextEditingController();

  void convertHeight() {
    setState(() {
      if (isCmToFeet) {
        heightInFeet = heightInCm * 0.0328084;
        strhegheightft = heightInFeet
            .toStringAsFixed(2); // Conversion formula from cm to feet
      } else {
        heightInCm = heightInFeet * 30.48; // Conversion formula from feet to cm
        strhegheightcm = heightInCm.toStringAsFixed(2);
        // userheight = heightInCm;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ///
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        //  globallist.removeLast();
        // print(globallist);
        return true;
      },
      child: Container(
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
                            top: 50, left: 20, right: 20, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'What is your height?',
                                style: titlecustomTextStyle(
                                    fontSize: height * 0.03),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Container(
                            height: height * 0.4,
                            width: width * 0.4,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      "assets/images/Group 1318.png"),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: height * 0.35,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/Group 1361.png"),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'please enter your height',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          if (isCmToFeet)
                            Container(
                              width: width * 0.35,
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: Colors.green, width: 3)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: TextFormField(
                                    controller: _hietformfeeldcontroller,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Color.fromARGB(255, 19, 118, 22),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w700),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: strhegheightcm == ''
                                          ? ""
                                          : "$strhegheightcm",
                                      hintStyle: TextStyle(
                                          fontSize: 30,
                                          color:
                                              Color.fromARGB(255, 19, 118, 22),
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      setState(() {
                                        _hietformfeeldcontrollertwo.clear();

                                        heightInCm =
                                            double.tryParse(value) ?? 0;
                                        setState(() {
                                          userheight =
                                              double.tryParse(value) ?? 0;
                                        });

                                        convertHeight();
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          if (!isCmToFeet)
                            Container(
                              width: width * 0.35,
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: Colors.green, width: 3)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 13),
                                  child: TextFormField(
                                    controller: _hietformfeeldcontrollertwo,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Color.fromARGB(255, 19, 118, 22),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w700),
                                    decoration: InputDecoration(
                                      /*  labelText:
                                        isCmToFeet ? 'Centimeters' : 'Feet',*/
                                      border: InputBorder.none,
                                      hintText: strhegheightft == ''
                                          ? ""
                                          : "$strhegheightft",
                                      hintStyle: TextStyle(
                                          fontSize: 30,
                                          color:
                                              Color.fromARGB(255, 19, 118, 22),
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      setState(() {
                                        heightInFeet =
                                            double.tryParse(value) ?? 0;

                                        heightInCm = heightInFeet * 30.48;

                                        convertHeight();
                                        _hietformfeeldcontroller.clear();
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),

                          ToggleButtons(
                            direction: Axis.horizontal,
                            onPressed: (int index) {
                              setState(() {
                                isCmToFeet = !isCmToFeet;
                              });
                            },
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            selectedBorderColor: Colors.green,
                            borderColor: Colors.green,
                            selectedColor: Colors.white,
                            fillColor: Colors.green,
                            color: Colors.green,
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            constraints: const BoxConstraints(
                              minHeight: 30.0,
                              minWidth: 80.0,
                            ),
                            isSelected: [isCmToFeet, !isCmToFeet],
                            children: fruits,
                          ),
                          // Text(
                          //   isCmToFeet
                          //       ? 'Height in Feet: $strhegheightft'
                          //       : 'Height in Centimeters: $heightInCm',
                          //   style:
                          //       TextStyle(fontSize: 18.0, color: Colors.green),
                          // ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.12, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(2.5),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                  iconSize: 40,
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                    // globallist.removeLast();
                                    //print(globallist);
                                  },
                                  icon: Icon(Icons.arrow_back)),
                            ),
                            SizedBox(
                              width: width * 0.3,
                            ),
                            Container(
                              padding: EdgeInsets.all(2.5),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                  iconSize: 40,
                                  color: Colors.white,
                                  onPressed: () {
                                    // context.router
                                    //     .push(YourCurrentWeightRoute());

                                    // globallist
                                    //     .add(userheight.toStringAsFixed(2));
                                    // print(globallist);
                                  },
                                  icon: Icon(Icons.arrow_forward)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
