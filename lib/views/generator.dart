import 'package:flutter/material.dart';
import 'package:qrlab/views/result.dart';
import 'package:qrlab/widgets/qrButton.dart';
import 'package:qrlab/widgets/qrTextFormField.dart';



class Generator extends StatelessWidget {

  final TextEditingController dataController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Lab"), centerTitle: true),
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 56,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.code, size: 100, color: Colors.grey),
            Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Text(
                      "Digite o texto que será armazenado no QR Code",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 17))),
            SizedBox(height: 20),
            QRTextFormField(controller: dataController),
            SizedBox(height: 20),
            QRButton("Gerar", onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Result(data: dataController.text)));
            },)
          ],
        ),
      )),
    );
  }
}
