import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrlab/widgets/qrButton.dart';
import 'package:qrlab/widgets/qrTextFormField.dart';

class GeneratorView extends StatelessWidget {
  final TextEditingController dataController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "app_title".tr,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false),
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
                child: Text("insert_qr_text".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 17))),
            SizedBox(height: 20),
            QRTextFormField(controller: dataController),
            SizedBox(height: 20),
            QRButton(
              "generate".tr,
              onPressed: () {
                Get.toNamed('/result', arguments: [dataController.text]);
              },
            )
          ],
        ),
      )),
    );
  }
}
