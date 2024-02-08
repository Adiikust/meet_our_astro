import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils/app_color.dart';

Widget CustomTextRegular(
    {required String title,
    Color color = AppColor.black,
    TextAlign? textAlign,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign? align}) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      // height: 1.5,
    ),
    textAlign: align ?? TextAlign.start,
  );
}

Widget CustomTextInterRegular(
    {required String title,
    Color color = AppColor.black,
    TextAlign? textAlign,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign? align}) {
  return Text(
    title,
    style: GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      // height: 1.5,
    ),
    textAlign: align ?? TextAlign.start,
  );
}

Widget CustomTextRobotoRegular(
    {required String title,
    Color color = AppColor.black,
    TextAlign? textAlign,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign? align}) {
  return Text(
    title,
    style: GoogleFonts.roboto(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      // height: 1.5,
    ),
    textAlign: align ?? TextAlign.start,
  );
}

Widget CustomOverFlowText(
    {required String title,
    Color color = AppColor.black,
    TextAlign? textAlign,
    TextDecoration? decoration,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign? align}) {
  return Text(
    title,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
      decoration: decoration,
      decorationColor: AppColor.lightBackgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
    ),
    textAlign: align ?? TextAlign.start,
  );
}

Widget CustomTextRalewayRegular(
    {required String title,
    Color color = AppColor.black,
    TextAlign? textAlign,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign? align}) {
  return Text(
    title,
    style: GoogleFonts.raleway(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      // height: 1.5,
    ),
    textAlign: align ?? TextAlign.start,
  );
}

Widget CustomTextCatamaranRegular(
    {required String title,
    Color color = AppColor.black,
    TextAlign? textAlign,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign? align}) {
  return Text(
    title,
    style: GoogleFonts.catamaran(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      // height: 1.5,
    ),
    textAlign: align ?? TextAlign.start,
  );
}

Widget CustomTextSoraRegular(
    {required String title,
    Color color = AppColor.black,
    TextAlign? textAlign,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign? align}) {
  return Text(
    title,
    style: GoogleFonts.sora(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
    textAlign: align ?? TextAlign.start,
  );
}
