import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/qrHome.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.lightBlue[800]
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Alpha',
      theme: ThemeData(
        primaryColor: Colors.lightBlue[800],
      ),
      home: QRHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
