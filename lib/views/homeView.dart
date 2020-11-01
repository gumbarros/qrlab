import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrlab/widgets/qrCard.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Lab",style: TextStyle(color: Colors.white),), centerTitle: true, automaticallyImplyLeading: false),
      body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 56,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    QRCard(title: "Generate QR Codes", asset: 2, onPressed: (){
                      Get.toNamed('/generator');
                    }),
                    QRCard(title: "Read QR Codes", asset: 3, onPressed: (){
                     Get.toNamed('/scanner');
                    }),
                  ]))),
    );
  }
}
