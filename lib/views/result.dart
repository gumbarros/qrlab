import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrlab/widgets/qrButton.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

class Result extends StatelessWidget {
  final String data;
  Result({@required this.data});

  @override
  Widget build(BuildContext context) {
    GlobalKey _globalKey = new GlobalKey();

    void _shareQRCode() async {
      try {
        RenderRepaintBoundary boundary =
            _globalKey.currentContext.findRenderObject();
        ui.Image image = await boundary.toImage(pixelRatio: 3.0);
        ByteData byteData =
            await image.toByteData(format: ui.ImageByteFormat.png);
        var pngBytes = byteData.buffer.asUint8List();
        await Share.file('Compartilhar QR Code', 'qrcode.png', pngBytes.buffer.asUint8List(), "image/png");
      } catch (e) {
        print(e);
      }
    }

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
                RepaintBoundary(
                  key: _globalKey,
                  child: QrImage(
                    backgroundColor: Colors.white,
                    data: data,
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                ),
                SizedBox(height: 20),
                QRButton("Compartilhar", onPressed: () {
                  _shareQRCode();
                })
              ],
            )));
  }
}
