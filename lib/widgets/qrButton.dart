import 'package:flutter/material.dart';

class QRButton extends StatelessWidget {

  final Function onPressed;
  final String text;
  QRButton(this.text, {@required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.width / 10,
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: onPressed,
        textColor: Colors.white,
        child: Text(
          text,
        ),
      ),
    );
  }
}
