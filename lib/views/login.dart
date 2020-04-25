import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qrlab/views/home.dart';
import 'package:qrlab/widgets/qrButton.dart';
import 'package:qrlab/widgets/qrTextFormField.dart';
import 'loginHelper.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("QR Lab"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Image.asset('lib/assets/images/lab1.png'),
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: MediaQuery.of(context).size.height / 3),
                  
                  SizedBox(height: 20),
                  QRTextFormField(label: "Usuário"),
                  SizedBox(height: 20),
                  QRTextFormField(label: "Senha", isPassword: true),
                  GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: MediaQuery.of(context).size.height / 20,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Esqueceu a senha?",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginHelper()));
                      }),
                  SizedBox(height: 10.0),
                  QRButton(
                    "Login",
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  )
                ]),
          ),
        ));
  }
}
