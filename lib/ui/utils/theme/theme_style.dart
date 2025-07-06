
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/ui/utils/theme/app_colors.dart';
import 'package:my_flutter_portfolio/ui/utils/theme/text_style.dart';

class ThemeStyle {

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      fontFamily:"Helvetica_Neue",
      brightness: Brightness.dark,
      primaryColor: Color(0xFF121212),
      scaffoldBackgroundColor: Color(0xFF121212),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF1F1F1F),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      colorScheme: ColorScheme.dark(
        primary: Color(0xFF121212),
        secondary: Color(0xFF1F1F1F),
        background: Color(0xFF121212),
        surface: Color(0xFF1F1F1F),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onBackground: Color(0xFFE0E0E0),
        onSurface: Color(0xFFE0E0E0),
      ),
      textTheme: TextTheme(
        headlineSmall: TextStyle(fontFamily:TextStyles.fontFamily,color: Color(0xFFE0E0E0), fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontFamily:TextStyles.fontFamily,color: Color(0xFFE0E0E0)),
        labelLarge: TextStyle(fontFamily:TextStyles.fontFamily,color: Color(0xFF03DAC6)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF00BCD4),
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      /*cardTheme: CardTheme(
        color: Color(0xFF1F1F1F),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),*/
    );

  }
}