import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class QRDrawer extends StatelessWidget {
  final List<String> listData;

  QRDrawer({this.listData});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 0.0),
            height: 50.0,
          ),
          Container(
            child: Text(
              "Scanned Data",
              style: TextStyle(fontSize: 34.0),
            ),
          ),
          Divider(),
          Column(
              children: listData.map((data) {
            bool url = data.contains("https://") ||
                    data.contains("http://") ||
                    data.contains("www.") ||
                    data.contains(".com") ||
                    data.contains(".net") ||
                    data.contains(".org")
                ? true
                : false;
            return InkWell(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              onLongPress: () {
                Clipboard.setData(ClipboardData(text: data));
                Toast.show("Sent to clipboard", context,
                    duration: 1, gravity: Toast.BOTTOM);
              },
              child: Card(
                color: url ? Theme.of(context).primaryColor : Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  height: MediaQuery.of(context).size.height / 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                          child: Text(data,
                              style: TextStyle(
                                  color: url ? Colors.white : Colors.black87),
                              overflow: TextOverflow.ellipsis)),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.content_copy),
                            color: !url ? Colors.black87 : Colors.white,
                            onPressed: () {
                              Clipboard.setData(ClipboardData(text: data));
                              Toast.show("Sent to clipboard",
                                  context,
                                  duration: 1, gravity: Toast.BOTTOM);
                            },
                          ),
                          url
                              ? IconButton(
                                  icon: Icon(Icons.call_made,
                                      color: Colors.white),
                                  onPressed: () async {
                                    if (!(data.contains("http") ||
                                            data.contains("https")) &&
                                        data.contains("www.")) {
                                      data = "http://" + data;
                                    } else if (!(data.contains("http") ||
                                            data.contains("https")) &&
                                        !data.contains("www.")) {
                                      data = "http://www." + data;
                                    }
                                    if (await canLaunch(data)) {
                                      await launch(data);
                                    } else {
                                      Toast.show("Error 404",
                                          context,
                                          duration: 3,
                                          backgroundColor: Colors.red,
                                          gravity: Toast.BOTTOM);
                                    }
                                  },
                                )
                              : SizedBox.shrink(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList())
        ]));
  }
}
