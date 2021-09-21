import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static final primaryRed = Color(0xffF2264B);
  static final primaryBlack = Color(0xff000000);
  static final primaryDark = Color(0xff313140);
  static final primaryGrey = Color(0xffB7B7C8);
  static final primarySilver = Color(0xffF8F8F8);
  static final primaryWhite = Color(0xffFFFFFF);

  static final List<Color> gradienteBlue = [
    Color(0xff005BEA),
    Color(0xff00C6FB),
  ];
  static final List<Color> gradienteRed = [
    Color(0xffED1D24),
    Color(0xffED1F69),
  ];
  static final List<Color> gradientePurple = [
    Color(0xffB224EF),
    Color(0xff7579FF),
  ];
  static final List<Color> gradienteGreen = [
    Color(0xff0BA360),
    Color(0xff3CBA92),
  ];
  static final List<Color> gradientePink = [
    Color(0xffFF7EB3),
    Color(0xffFF758C),
  ];
  static final List<Color> gradienteBlack = [
    Colors.black.withOpacity(0),
    Colors.black.withOpacity(0.3),
    Colors.black.withOpacity(1),
  ];
  static final List<Color> gradienteDark = [
    Colors.black.withOpacity(0.40),
    AppColors.primaryDark,
  ];
}
