import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "app_title".tr,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
          child: Container(
        width: Get.width,
        height: Get.height / 1.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async =>
                  await launch("https://www.github.com/gumbarros/qrlab"),
              child: Container(
                width: Get.width / 1.3,
                height: Get.height / 5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/assets/images/github.png"))),
              ),
            ),
            Text("Developed by Gustavo Barros & Flavio Cintra",  style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      )),
    );
  }
}
