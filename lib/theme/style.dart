import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme {
  static ThemeData get lightTheme { //1
    return ThemeData( //2
        primaryColor: CustomColors.lightRed,
        scaffoldBackgroundColor: Colors.white70,
        fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: CustomColors.lightPurple,
        )
    );
  }
}