import 'dart:convert';
import 'package:news/apiUrl.dart';
import 'package:news/pages/tab_berita/classDetail.dart';
import 'package:news/pages/tab_berita/detail.dart';
import 'package:news/pages/tab_berita/uvu.dart';
import 'package:shimmer/shimmer.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:news/colors.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Usa extends StatefulWidget {
  @override
  _UsaState createState() => _UsaState();
}

class _UsaState extends State<Usa> {
  bool _isLoading = true;
  List data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print('Init state');
    if (mounted) {
      _getData();
    }
  }

  Future<Null> _getData() async {
    final url = Uri.encodeFull(USA);
    var res = await http.get(url, headers: {'accept': 'application/json'});

    if (this.mounted) {
      if (res.statusCode == 200) {
        setState(() {
          try {
            data = json.decode(res.body)['articles'];
          } catch (e) {
            print("Error: $e");
          }
        });
      }
    }
    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: PrimaryColor, //change your color here
        ),
        title: Text(
          'Usa Today',
          style: TextStyle(color: GreyColor),
        ),
        backgroundColor: WhiteColor,
      ),
      body: ListView(physics: new ClampingScrollPhysics(), children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
          child: _isLoading
              ? Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 200.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 15.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 15.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 15.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 200.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 15.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 15.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 15.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 200.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 15.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 15.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 15.0,
                        child: Shimmer.fromColors(
                            baseColor: Color(0XFFededed),
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15,
                              width: double.infinity,
                              color: Color(0xFFededed),
                            )),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: <Widget>[
                    ListView.builder(
                        //MEMBUAT LISTVIEW
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: data == null
                            ? 0
                            : data
                                .length, //KETIKA DATANYA KOSONG KITA ISI DENGAN 0 DAN APABILA ADA MAKA KITA COUNT JUMLAH DATA YANG ADA
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 40.0),
                            child:
                                //  index == 0 ?
                                Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    var route = new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          new Detail(
                                        value: DetailUrl(
                                          url: data[index]['url'],
                                        ),
                                      ),
                                    );
                                    Navigator.of(context).push(route);
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image:
                                              data[index]['urlToImage'] == null
                                                  ? ExactAssetImage(
                                                      'images/empty.jpg')
                                                  : NetworkImage(
                                                      data[index]['urlToImage'])

                                          // NetworkImage("https://picsum.photos/250?image=9"),
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  // width: c_width,
                                  child: new Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: new Text(
                                            data[index]['source']['name'],
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 11.0,
                                                color: SecondaryColor),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          var route = new MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                new Detail(
                                              value: DetailUrl(
                                                url: data[index]['url'],
                                              ),
                                            ),
                                          );
                                          Navigator.of(context).push(route);
                                        },
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  child: new Text(
                                                    data[index]['title'],
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0XFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                child: new Text(
                                                  data[index]['description'] ==
                                                          null
                                                      ? ''
                                                      : data[index]
                                                          ['description'],
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      TextStyle(fontSize: 11.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // : Row(
                            //     children: <Widget>[
                            //       Expanded(
                            //         flex: 1,
                            //         child: Container(
                            //           width:
                            //               MediaQuery.of(context).size.width,
                            //           height: 80,
                            //           decoration: BoxDecoration(
                            //             borderRadius:
                            //                 BorderRadius.circular(10),
                            //             image: DecorationImage(
                            //                 fit: BoxFit.fill,
                            //                 image: data[index]
                            //                             ['urlToImage'] ==
                            //                         null
                            //                     ? NetworkImage(
                            //                         'https://lh3.googleusercontent.com/proxy/WPbJ2E2pa2FzJ4lJvAd7d8J9Bnbg_zIjUpHjv05gt1zJvnbt9HxeTS5YzRkZvkvWpZt4LJyubpfRPptg5E_qbh9kGnNZLSju6p0G_ADuzOQV1qKX56VZ8g')
                            //                     : NetworkImage(data[index]
                            //                         ['urlToImage'])

                            //                 // NetworkImage("https://picsum.photos/250?image=9"),
                            //                 ),
                            //           ),
                            //         ),
                            //       ),
                            //       Expanded(
                            //         flex: 2,
                            //         child: Container(
                            //           padding:
                            //               const EdgeInsets.only(left: 10.0),
                            //           // width: c_width,
                            //           child: new Column(
                            //             children: <Widget>[
                            //               Align(
                            //                 alignment: Alignment.centerLeft,
                            //                 child: Container(
                            //                   child: new Text(
                            //                     data[index]['title'],
                            //                     textAlign: TextAlign.left,
                            //                     style: TextStyle(
                            //                         color:
                            //                             Color(0XFF000000),
                            //                         fontWeight:
                            //                             FontWeight.bold),
                            //                   ),
                            //                 ),
                            //               ),
                            //               Align(
                            //                 alignment: Alignment.centerLeft,
                            //                 child: Container(
                            //                   child: new Text(
                            //                     data[index]['source']
                            //                         ['name'],
                            //                     textAlign: TextAlign.left,
                            //                     style: TextStyle(
                            //                         fontSize: 11.0,
                            //                         color: SecondaryColor),
                            //                   ),
                            //                 ),
                            //               ),
                            //             ],
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                          );
                        }),
                    // Padding(
                    //   padding: const EdgeInsets.only(bottom: 40.0),
                    //   child: Row(
                    //     children: <Widget>[
                    //       Expanded(
                    //         flex: 1,
                    //         child: Container(
                    //             child: ClipRRect(
                    //           borderRadius: BorderRadius.circular(8.0),
                    //           child: Image.network(
                    //             'https://www.wowkeren.com/display/images/photo/2020/08/11/00324671.jpg',
                    //             // fit: BoxFit.fill
                    //             // height: 150.0,
                    //             width: 100.0,
                    //           ),
                    //         )),
                    //       ),
                    //       Expanded(
                    //         flex: 2,
                    //         child: Container(
                    //           padding: const EdgeInsets.only(left: 10.0),
                    //           // width: c_width,
                    //           child: new Column(
                    //             children: <Widget>[
                    //               Align(
                    //                 alignment: Alignment.centerLeft,
                    //                 child: Container(
                    //                   child: new Text(
                    //                     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididu…',
                    //                     textAlign: TextAlign.left,
                    //                     style: TextStyle(
                    //                         color: Color(0XFF000000),
                    //                         fontWeight: FontWeight.bold),
                    //                   ),
                    //                 ),
                    //               ),
                    //               Align(
                    //                 alignment: Alignment.centerLeft,
                    //                 child: Container(
                    //                   child: new Text(
                    //                     "Kompas.com",
                    //                     textAlign: TextAlign.left,
                    //                     style: TextStyle(
                    //                         fontSize: 11.0,
                    //                         color: SecondaryColor),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
        )
      ]),
    );
  }
}
