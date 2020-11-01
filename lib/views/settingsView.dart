import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:qrlab/controllers/settingsController.dart';
import 'package:qrlab/widgets/qrLanguageDialog.dart';
import 'package:qrlab/widgets/qrMenuCard.dart';


class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      init: SettingsController(),
      builder: (conf) => Scaffold(
        appBar: AppBar(title: Text("app_title".tr,style: TextStyle(color: Colors.white),), centerTitle: true),
        body: SingleChildScrollView(
            child: Container(
              height: Get.height - 56,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                          width: Get.width / 2.8,
                          child: QRMenuCard(
                            text:"language".tr,
                            onTap: () async {
                              return Get.dialog(LanguageDialog());
                            },
                            icon: Icons.language,
                          )),
                      Container(
                        width: Get.width / 2.8,
                        child: Container(
                            width: Get.width / 2.8,
                            child: QRMenuCard(
                              text: "about".tr,
                              onTap: () async {

                              },
                              icon: Icons.assignment_ind,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}