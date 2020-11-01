import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qrlab/controllers/settingsController.dart';

class LanguageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      init: SettingsController(),
      builder: (conf) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0.0,
          child: Container(
            height: Get.height / 4,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: Get.height / 10,
                  width: Get.width / 1,
                  child: Center(
                    child: DropdownButton(
                      value: conf.lang,
                      hint: Text("language".tr),
                      style: TextStyle(),
                      onChanged: (value) {
                        conf.lang = value;
                        conf.upd();
                      },
                      items: <DropdownMenuItem<String>>[
                        DropdownMenuItem(
                          child: Text("Brazilian Portuguese",style: TextStyle(color: Colors.black)),
                          value: "pt",
                        ),
                        DropdownMenuItem(
                          child: Text("English", style: TextStyle(color: Colors.black),),
                          value: "en",
                        ),
                      ],
                    ),
                  ),
                ),
                RaisedButton(
                  child: Text('save'.tr),
                  onPressed: () {
                    final GetStorage getStorage = new GetStorage();

                    getStorage.write("locale", conf.lang);

                    Get.updateLocale(new Locale(conf.lang));

                    Get.back();
                  },
                ),
              ],
            ),
          )),
    );
  }
}
