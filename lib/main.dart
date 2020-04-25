import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrlab/views/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(153, 204, 51, 1.0),
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Lab',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(153, 204, 51, 1.0),
        primarySwatch: Colors.lightGreen,
        appBarTheme: AppBarTheme(
            brightness: Brightness.dark,
            textTheme: TextTheme(
                title: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            iconTheme: IconThemeData(color: Colors.white)),
      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
