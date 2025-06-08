import 'package:flutter/material.dart';


/// Function to hide the keyboard
hideKeyboard(BuildContext context) {
  // FocusScope.of(context).unfocus();
  FocusManager.instance.primaryFocus?.unfocus();
}

///Show Log
showLog(String str) {
  debugPrint('-> $str');
}

const String production = 'production';
const String development = 'development';
