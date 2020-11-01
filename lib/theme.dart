import 'package:flutter/material.dart';

class QRTheme{
  static get theme => ThemeData(
    primaryColor: Color.fromRGBO(153, 204, 51, 1.0),
    primarySwatch: Colors.lightGreen,
    appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white)),
  );
}