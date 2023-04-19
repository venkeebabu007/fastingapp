import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

/*Widget customIcon({
  IconData? iconData,
  String? imagePath,
  double iconSize = 14,
  double imageSize = 20,
  Color color = Colors.grey,
}) {
  return iconData != null
      ? Icon(iconData, size: iconSize, color: color)
      : SvgPicture.asset(imagePath!, height: imageSize);
}*/

TextStyle midlecustomTextStyle({
  Color? color,
  FontWeight weight = FontWeight.w400,
  double fontSize = 25,
  FontStyle fontStyle = FontStyle.normal,
}) {
  return GoogleFonts.lato(
      fontSize: 25,
      fontStyle: FontStyle.normal,
      color: Color.fromARGB(255, 6, 119, 10),
      fontWeight: FontWeight.bold);
}

TextStyle titlecustomTextStyle({
  Color? color,
  FontWeight weight = FontWeight.w900,
  double fontSize = 25,
  FontStyle fontStyle = FontStyle.italic,
  String? fontFamily,
}) {
  return TextStyle(
    color: color ?? Color.fromARGB(255, 6, 119, 10),
    fontWeight: weight,
    fontSize: fontSize,
    fontStyle: fontStyle,
    fontFamily: 'Segoe UI Italic',
  );
}
