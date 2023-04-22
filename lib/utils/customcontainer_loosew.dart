import 'package:flutter/material.dart';

class CustomContainerlooseweight extends StatelessWidget {
  Color? color;
  Color? iconcolor;
  Color? textcolor;
  Color borderColor;
  double? containerheight;
  double? containerwidth;
  Decoration? decoration;
  String? title;
  String? contentone;
  String? contentwo;

  CustomContainerlooseweight(
      {this.color,
      this.containerheight,
      this.containerwidth,
      this.decoration,
      required this.borderColor,
      this.title,
      this.contentone,
      this.contentwo,
      this.iconcolor,
      this.textcolor});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: containerheight,

      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40.0),
          border: Border.all(color: borderColor, width: 1.5)),
      //padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 8),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${title}',
                    style: TextStyle(
                        color: textcolor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25),
                  ),
                  SizedBox(
                    width: width * 0.5,
                  ),
                  Icon(
                    Icons.monitor_weight,
                    color: iconcolor,
                    size: 50,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${contentone}',
                    style: TextStyle(
                        color: textcolor,

                        //Color.fromARGB(255, 21, 94, 23),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, bottom: 10, left: 15),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${contentwo}',
                    style: TextStyle(
                        color: textcolor,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
