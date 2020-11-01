import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrlab/controllers/homeController.dart';
import 'package:qrlab/widgets/qrCard.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("app_title".tr,style: TextStyle(color: Colors.white),), centerTitle: true, actions: [IconButton(icon: Icon(Icons.settings), onPressed: (){
        Get.toNamed('/settings');
      },)],),
      body: SingleChildScrollView(
          child: GetBuilder<HomeController>(
            init: HomeController(),
            builder:(_)=> Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 56,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      QRCard(title: "generate_qr".tr, asset: 2, onPressed: (){
                        Get.toNamed('/generator');
                      }),
                      QRCard(title: "read_qr".tr, asset: 3, onPressed: (){
                       Get.toNamed('/scanner');
                      }),
                    ])),
          )),
    );
  }
}
