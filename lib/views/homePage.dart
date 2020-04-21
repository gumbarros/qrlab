import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'qrHome.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.home),
            ],
          ),
        ],
        title: Text("QR Lab"), centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
              children: <Widget>[
                Image.asset('assets/images/lab1.png'),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Login",
                      labelStyle: TextStyle(color: Colors.lightGreen, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.lightGreen, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0),
                ButtonTheme(
                  minWidth: 100.0,
                  height: 50.0,
                  child:RaisedButton(
                    color: Colors.lightGreen,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QRHome())
                      );
                    },
                    textColor: Colors.white,
                    child: Text(
                      "Login",
                    ),
                  ),
                ),
              ]
          ),),
      )
      );
  }}