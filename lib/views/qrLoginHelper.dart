import 'package:flutter/material.dart';

class QRLoginHelper extends StatefulWidget {
  @override
  _QRLoginHelperState createState() => _QRLoginHelperState();
}

class _QRLoginHelperState extends State<QRLoginHelper> {
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
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 10,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  textColor: Colors.white,
                  child: Text(
                    "Enviar",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
