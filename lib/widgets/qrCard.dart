import 'package:flutter/material.dart';

class QRCard extends StatelessWidget {
  final String title;
  final int asset;
  final Function onPressed;

  QRCard(
      {@required this.title, @required this.asset, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          onPressed();
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 1.3,
          height: MediaQuery.of(context).size.height / 4,
          child: Container(
              height: MediaQuery.of(context).size.height / 5,
              child: Row(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child:
                          Image.asset("lib/assets/images/lab$asset.png")),
                  Container(
                    child: Text(title,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).primaryColor)),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
