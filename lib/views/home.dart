import 'package:flutter/material.dart';
import 'package:qrlab/views/generator.dart';
import 'package:qrlab/views/scanner.dart';
import 'package:qrlab/widgets/qrCard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Lab"), centerTitle: true, automaticallyImplyLeading: false),
      body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height -
                  56, //(Tamanho da AppBar, retirado do famoso StackOverFlow)
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    QRCard(title: "Gerar QR Codes", asset: 2, onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Generator()));
                    }),
                    QRCard(title: "Ler QR Codes", asset: 3, onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Scanner()));
                    }),
                  ]))),
    );
  }
}
