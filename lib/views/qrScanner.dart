import 'package:flutter/material.dart';
import 'package:qrcode/qrcode.dart';
import 'package:toast/toast.dart';

import '../widgets/qrDrawer.dart';

class QRScanner extends StatefulWidget {
  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  bool paused = false;
  List<String> qrData = [];

  QRCaptureController _captureController = QRCaptureController();

  @override
  void initState() {
    _captureController.onCapture((data) {
      Toast.show("Dado gravado com sucesso!", context,
          duration: 3, gravity: Toast.BOTTOM, backgroundColor: Colors.green);
      if (!qrData.contains(data)) {
        setState(() {
          qrData.add(data);
        });
      }
    });
    super.initState();
  }

  bool flash = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Lab"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(flash ? Icons.flash_off : Icons.flash_on),
            onPressed: () {
              setState(() {
                if (!flash) {
                  flash = true;
                  _captureController.torchMode = CaptureTorchMode.on;
                } else {
                  flash = false;
                  _captureController.torchMode = CaptureTorchMode.off;
                }
              });
            },
          )
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
                      border: Border.all(color: Colors.white)),
                  child: SizedBox.shrink())),
        ],
      ),
      drawer: QRDrawer(listData: qrData),
    );
  }
}
