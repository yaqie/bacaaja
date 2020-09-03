import 'package:flutter/material.dart';
import 'package:news/colors.dart';
import 'package:news/pages/cari.dart';
import 'package:news/pages/dunia.dart';
import 'package:news/pages/media.dart';
import 'package:news/pages/tab_berita/bisnis.dart';
import 'package:news/pages/tab_berita/hiburan.dart';
import 'package:news/pages/tab_berita/indonesia.dart';
import 'package:news/pages/tab_berita/kesehatan.dart';
import 'package:news/pages/tab_berita/olahraga.dart';
import 'package:news/pages/tab_berita/sain.dart';
import 'package:news/pages/tab_berita/teknologi.dart';

class Dunia extends StatefulWidget {
  @override
  _DuniaState createState() => _DuniaState();
}

class _DuniaState extends State<Dunia> {
  @override
  Widget build(BuildContext context) {
    final tabs = [
      // 'Semua',
      'Bisnis',
      'Teknologi',
      'Hiburan',
      'Olahraga',
      'Sains',
      'Kesehatan',
    ];

    final List<Widget> pages = [
      // Indonesia(),
      Bisnis(),
      Teknologi(),
      Hiburan(),
      Olahraga(),
      Sain(),
      Kesehatan(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: WhiteColor,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () => {
                    setState(() {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext context) => new Cari(),
                      );
                      Navigator.of(context).push(route);
                    })
                  },
                  color: AppBarColor,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Color(0XFFB9B9B9),
                      ),
                      Text(
                        "   Cari berita ...",
                        style: TextStyle(color: Color(0XFFB9B9B9)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            // automaticallyImplyLeading: false,
            // backgroundColor: Color(0xff5808e5),
            bottom: TabBar(
              labelColor: PrimaryColor,
              indicatorColor: PrimaryColor,
              isScrollable: true,
              unselectedLabelColor: GreyColor,
              tabs: [
                for (final tab in tabs) Tab(text: tab),
              ],
            ),
          ),
          body: TabBarView(
            children: [for (final tab in pages) tab],
          ),
        ),
      ),
    );
  }
}
