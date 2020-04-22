import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qrlab/views/qrHome.dart';
import 'qrLoginHelper.dart';

class QRLogin extends StatefulWidget {
  @override
  _QRLoginState createState() => _QRLoginState();
}

class _QRLoginState extends State<QRLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Usuário", border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Senha", border: OutlineInputBorder()),
                    ),
                  ),
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
                            builder: (context) => QRLoginHelper()));
                      }),
                  SizedBox(height: 10.0),
                  ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 10,
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => QRHome()));
                      },
                      textColor: Colors.white,
                      child: Text(
                        "Login",
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
