import 'package:flutter/material.dart';
import 'package:news/colors.dart';
import 'package:news/pages/tab_berita/classDetail.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Detail extends StatefulWidget {
  final DetailUrl value;
  Detail({Key key, this.value}) : super(key: key);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  String url;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    geturl();
  }

  geturl() {
    setState(() {
      url = widget.value.url;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: false,
      //   iconTheme: IconThemeData(
      //     color: PrimaryColor, //change your color here
      //   ),
      //   backgroundColor: WhiteColor,
      //   title: Text(
      //     'Detail berita',
      //     style: TextStyle(color: GreyColor),
      //   ),
      // ),
      body: new WebviewScaffold(
        url: url,
        appBar: new AppBar(
          centerTitle: false,
          iconTheme: IconThemeData(
            color: PrimaryColor, //change your color here
          ),
          backgroundColor: WhiteColor,
          title: Text(
            url,
            style: TextStyle(color: GreyColor),
          ),
        ),
      ),
    );
    // return new MaterialApp(
    //   routes: {
    //     "/": (_) => new WebviewScaffold(
    //           url: "https://www.google.com",
    //           appBar: new AppBar(
    //             title: new Text("Widget webview"),
    //           ),
    //         ),
    //   },
    // );
  }
}
