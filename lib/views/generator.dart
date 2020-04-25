import 'package:flutter/material.dart';
import 'package:qrlab/widgets/qrButton.dart';
import 'package:share/share.dart';

class QRGenerator extends StatefulWidget {
  @override
  _QRGeneratorState createState() => _QRGeneratorState();
}

class _QRGeneratorState extends State<QRGenerator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Lab"), centerTitle: true),
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //TODO: Package que gere QR Code compartilhavel
          ],
        ),
      )),
    );
  }
}
