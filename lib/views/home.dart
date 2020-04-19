import 'package:flutter/material.dart';
import 'package:qrcode/qrcode.dart';
import 'package:toast/toast.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool paused = false;

  QRCaptureController _captureController = QRCaptureController();

  @override
  void initState() {
    _captureController.onCapture((data) {
      Toast.show("Dado escaneado! $data", context, duration: 5, gravity:  Toast.BOTTOM, backgroundColor: Colors.green);
    });
    //TODO criar tela que redireciona
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Escanear QR Code"),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          actions: <Widget>[
            //TODO: Botões para controlar a camera
          ],
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            QRCaptureView(controller: _captureController),
            Center(
                child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white)
              ),
              child: Text("") //TODO: Melhorar widget de visualização do QR
            )),
          ],
        ));
  }
}
