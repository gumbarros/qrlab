import 'package:flutter/material.dart';
import 'package:qrlab/widgets/qrButton.dart';
import 'package:qrlab/widgets/qrTextFormField.dart';

class LoginHelper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Lab"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.email,
                  size: 50, color: Theme.of(context).primaryColor),
              SizedBox(height: 10),
              Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Text(
                      "Para recuperar sua senha,\n informe seu endereço de email",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 17))),
              SizedBox(height: 20),
              QRTextFormField(label: "Email"),
              SizedBox(height: 20),
              QRButton("Enviar", onPressed: (){
                Navigator.of(context).pop();
              },)
            ],
          ),
        ),
      ),
    );
  }
}
