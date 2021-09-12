import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/utils.dart';

//! Single source of theme changing
final themeData = ThemeData(
  primaryColor: primaryColor,
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: black,
      fontWeight: FontWeight.bold,
      fontSize: 36,
    ),
    headline4: TextStyle(
      color: black,
      fontWeight: FontWeight.w600,
      fontSize: 25,
    ),
    headline6: TextStyle(
      color: primaryColor,
      fontWeight: FontWeight.bold,
      fontSize: 15.3,
    ),
    bodyText1: TextStyle(
      color: black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    bodyText2: TextStyle(
      color: offWhite,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  ),
);
