import 'package:flutter/material.dart';

class DarkFlavor{
  static ThemeData theme(){
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Color(0X7F162447),
      primarySwatch: Colors.deepPurple,
      accentColor: Color(0XFFe43f5a),
      primaryColorBrightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      fontFamily: 'SFPro',
      colorScheme: ColorScheme(
        primary: Color(0XFF162447), 
        primaryVariant: Color(0XFF1F4068), 
        secondary: Color(0XFF00BFA5), 
        secondaryVariant: Color(0XFF64FFDA), 
        surface: Color(0XDF162447), 
        background: Color(0XFFD303D), 
        error: Color(0XFFF43F5A), 
        onPrimary: Color(0XFFF5F5F5), 
        onSecondary: Color(0XFFF5F5F5), 
        onSurface: Color(0XFFF5F5F5), 
        onBackground: Color(0XFFF5F5F5), 
        onError: Color(0XFFF5F5F5), 
        brightness: Brightness.dark,
      ),
    );
  }
}