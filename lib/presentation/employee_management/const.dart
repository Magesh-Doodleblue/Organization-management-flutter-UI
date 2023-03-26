import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color pink = Color(0xFFD01257);
const Color colorTitleText = Color(0xFF5C5C5C);
getDonegalOneStyle({size = 20, weight = FontWeight.w400, height = 16.25, color = colorTitleText}) {
  return GoogleFonts.donegalOne(fontSize: size, fontWeight: weight, color: color);
}

getPoppinsStyle({size = 20, weight = FontWeight.w400, height = 16.25, color = colorTitleText}) {
  return GoogleFonts.donegalOne(fontSize: size, fontWeight: weight, color: color);
}

getJaldiStyle({size = 20, weight = FontWeight.w400, height = 16.25, color = colorTitleText}) {
  return GoogleFonts.jaldi(fontSize: size, fontWeight: weight, color: color);
}

getInterStyle({size = 20, weight = FontWeight.w400, height = 16.25, color = colorTitleText}) {
  return GoogleFonts.inter(fontSize: size, fontWeight: weight, color: color);
}

const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceRegular = SizedBox(width: 18.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);
const Widget horizontalSpaceLarge = SizedBox(width: 50.0);

const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceRegular = SizedBox(height: 18.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);
