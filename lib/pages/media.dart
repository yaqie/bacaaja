import 'package:flutter/material.dart';
import 'package:news/colors.dart';
import 'package:news/pages/cari.dart';
import 'package:news/pages/media/al.dart';
import 'package:news/pages/media/cnn.dart';
import 'package:news/pages/media/eweekly.dart';
import 'package:news/pages/media/fox.dart';
import 'package:news/pages/media/usa.dart';
import 'package:news/pages/media/verge.dart';
import 'package:news/pages/tab_berita/uvu.dart';

class Media extends StatefulWidget {
  @override
  _MediaState createState() => _MediaState();
}

class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: WhiteColor,
          title:
              // Text('Media',
              //     style: TextStyle(
              //       color: PrimaryColor,
              //     )
              //     ),
              Column(
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
          automaticallyImplyLeading: false,
          // backgroundColor: Color(0xff5808e5),
        ),
        // backgroundColor: Colors.white,
        body: ListView(physics: new ClampingScrollPhysics(), children: <Widget>[
          Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            RawMaterialButton(
                              elevation: 0,
                              // shape: CircleBorder(),
                              fillColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  var route = new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new Cnn(),
                                  );
                                  Navigator.of(context).push(route);
                                });
                              },
                              child: Image.asset('images/cnn.jpeg'),
                              constraints: BoxConstraints.tightFor(
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text('Cnn',
                                      style: TextStyle(color: Colors.black)),
                                  // Text('payment',style: TextStyle(fontSize: 12,color: Color(0xFF333333),),)
                                ],
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            RawMaterialButton(
                              elevation: 0,
                              // shape: CircleBorder(),
                              fillColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  var route = new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new Fox(),
                                  );
                                  Navigator.of(context).push(route);
                                });
                              },
                              child: Image.asset('images/fox.png'),
                              constraints: BoxConstraints.tightFor(
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text('Fox News',
                                      style: TextStyle(color: Colors.black)),
                                  // Text('payment',style: TextStyle(fontSize: 12,color: Color(0xFF333333),),)
                                ],
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            RawMaterialButton(
                              elevation: 0,
                              // shape: CircleBorder(),
                              fillColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  var route = new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new Verge(),
                                  );
                                  Navigator.of(context).push(route);
                                });
                              },
                              child: Image.asset('images/verge.png'),
                              constraints: BoxConstraints.tightFor(
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text('The Verge',
                                      style: TextStyle(color: Colors.black)),
                                  // Text('payment',style: TextStyle(fontSize: 12,color: Color(0xFF333333),),)
                                ],
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            RawMaterialButton(
                              elevation: 0,
                              // shape: CircleBorder(),
                              fillColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  var route = new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new Usa(),
                                  );
                                  Navigator.of(context).push(route);
                                });
                              },
                              child: Image.asset('images/usa.jpg'),
                              constraints: BoxConstraints.tightFor(
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text('USA Today',
                                      style: TextStyle(color: Colors.black)),
                                  // Text('payment',style: TextStyle(fontSize: 12,color: Color(0xFF333333),),)
                                ],
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            RawMaterialButton(
                              elevation: 0,
                              // shape: CircleBorder(),
                              fillColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  var route = new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new Eweekly(),
                                  );
                                  Navigator.of(context).push(route);
                                });
                              },
                              child: Image.asset('images/eweekly.png'),
                              constraints: BoxConstraints.tightFor(
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text('E Weekly',
                                      style: TextStyle(color: Colors.black)),
                                  // Text('payment',style: TextStyle(fontSize: 12,color: Color(0xFF333333),),)
                                ],
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            RawMaterialButton(
                              elevation: 0,
                              // shape: CircleBorder(),
                              fillColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  var route = new MaterialPageRoute(
                                    builder: (BuildContext context) => new Al(),
                                  );
                                  Navigator.of(context).push(route);
                                });
                              },
                              child: Image.asset('images/al.png'),
                              constraints: BoxConstraints.tightFor(
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text('Al Jazee...',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.black)),
                                  // Text('payment',style: TextStyle(fontSize: 12,color: Color(0xFF333333),),)
                                ],
                              ),
                            ),
                          ],
                        )),
                        // Expanded(
                        //     child: Column(
                        //   children: <Widget>[],
                        // )),
                      ],
                    ),
                  )
                ],
              ))
        ]));
  }
}
