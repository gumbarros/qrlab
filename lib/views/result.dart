import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrlab/widgets/qrButton.dart';

class Result extends StatelessWidget {
  final String data;
  Result({@required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("QR Lab"),
          centerTitle: true,
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 56,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                QrImage(
                  data: data,
                  version: QrVersions.auto,
                  size: 200.0,
                ),
                SizedBox(height: 20,),
                QRButton("Compartilhar", onPressed: (){})
              ],
            )));
  }
}
