import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:marvel_app/shared/themes/app_colors.dart';

class TextStyles {
  //1
  static final profileTitle = TextStyle(
    color: Colors.black,
    fontFamily: 'gilroy-heavy',
    fontSize: 40,
  );
  //2
  static final profileSubtitle = TextStyle(
    color: Colors.grey,
    fontFamily: 'gilroy-semibold',
    fontSize: 16,
  );
  //3
  static final homeTitle = TextStyle(
    color: Colors.black,
    fontFamily: 'gilroy-heavy',
    fontSize: 32,
  );
  //4
  static final homeSubtitle = TextStyle(
    color: Colors.black,
    fontFamily: 'gilroy-semibold',
    fontSize: 14,
  );
  //5
  static final cardTitle = TextStyle(
    color: AppColors.primaryWite,
    fontFamily: 'gilroy-heavy',
    fontSize: 20,
  );
  //6
  static final cardSubtitle = TextStyle(
    color: AppColors.primaryWite,
    fontFamily: 'gilroy-medium',
    fontSize: 10,
  );
  //7
  static final sectionTitle = TextStyle(
    color: AppColors.primaryRed,
    fontFamily: 'gilroy-bold',
    fontSize: 18,
  );
  //8
  static final description = TextStyle(
    color: AppColors.primaryGrey,
    fontFamily: 'gilroy-medium',
    fontSize: 14,
  );
  //9
  static final caracteristic = TextStyle(
    color: Colors.black,
    fontFamily: 'gilroy-medium',
    fontSize: 12,
  );
  //10
  static final ability = TextStyle(
    color: Colors.black,
    fontFamily: 'gilroy-regular',
    fontSize: 12,
  );
}
