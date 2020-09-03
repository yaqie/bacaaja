import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:news/colors.dart';
import 'package:news/pages/dashboard.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/pages/tab_berita/classDetail.dart';
import 'package:news/pages/tab_berita/detail.dart';
import 'package:shimmer/shimmer.dart';

class Post {
  final String title;
  final String description;
  final String url;
  final String image;

  Post(this.title, this.description, this.url, this.image);
}

class Cari extends StatefulWidget {
  @override
  _CariState createState() => _CariState();
}

class _CariState extends State<Cari> {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    if (search == "empty") return [];
    if (search == "error") throw Error();

    // https://newsapi.org/v2/everything?q=zara&domains=kompas.com,detik.com,suara.com,harianjogja.com,pikiran-rakyat.com,tribunnews.com,bisnis.com,sukabumiupdate.com,grid.id,okezone.com,cnnindonesia.com,jpnn.com,mojok.co&apiKey=59842e6f07464c7c869c13681483e582
    final url = Uri.encodeFull('https://newsapi.org/v2/everything?q=' +
        search +
        '&domains=kompas.com,detik.com,suara.com,harianjogja.com,pikiran-rakyat.com,tribunnews.com,bisnis.com,sukabumiupdate.com,grid.id,okezone.com,cnnindonesia.com,jpnn.com,mojok.co&apiKey=59842e6f07464c7c869c13681483e582');
    var res = await http.get(url, headers: {'accept': 'application/json'});
    var asd = json.decode(res.body)['articles'].length;
    print(asd);

    return List.generate(asd, (int index) {
      return Post(
        json.decode(res.body)['articles'][index]['title'],
        json.decode(res.body)['articles'][index]['description'] == null
            ? ''
            : json.decode(res.body)['articles'][index]['description'],
        json.decode(res.body)['articles'][index]['url'],
        json.decode(res.body)['articles'][index]['urlToImage'] == null
            ? ''
            : json.decode(res.body)['articles'][index]['urlToImage'],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar<Post>(
            hintText: 'Cari berita ...',
            searchBarStyle: SearchBarStyle(
              backgroundColor: AppBarColor,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              borderRadius: BorderRadius.circular(30),
            ),
            onSearch: search,
            onError: (error) {
              return Center(
                child: Text("Error occurred : $error"),
              );
            },
            emptyWidget: Center(
              child: Text("Data tidak ada"),
            ),
            loader: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 100.0,
                    child: Shimmer.fromColors(
                        baseColor: Color(0XFFededed),
                        highlightColor: Colors.white,
                        child: Container(
                          height: 100,
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
            ),
            onItemFound: (Post post, int index) {
              return RaisedButton(
                color: WhiteColor,
                onPressed: () {
                  var route = new MaterialPageRoute(
                    builder: (BuildContext context) => new Detail(
                      value: DetailUrl(
                        url: post.url,
                      ),
                    ),
                  );
                  Navigator.of(context).push(route);
                },
                child:
                    // ListView(children: <Widget>[
                    //   Container(
                    //       decoration: new BoxDecoration(color: Colors.red),
                    //       child: new ListTile(
                    //         title: Text(post.title),
                    //         subtitle: Text(post.description),
                    //       ))
                    // ]),
                    Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: post.image == ''
                              ? ExactAssetImage('images/empty.jpg')
                              : Image.network(
                                  post.image,
                                  // fit: BoxFit.fill
                                  // height: 150.0,
                                  width: 100.0,
                                ),
                        )),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.only(left: 10.0),
                          // width: c_width,
                          child: new Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      child: new Text(
                                        post.title,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color(0XFF000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Align(
                              //   alignment: Alignment.centerLeft,
                              //   child: Container(
                              //     child: new Text(
                              //       "Kompas.com",
                              //       textAlign: TextAlign.left,
                              //       style: TextStyle(
                              //           fontSize: 11.0, color: SecondaryColor),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //     Padding(
                //   padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                //   child: ListTile(
                //     title: Text(post.title),
                //     subtitle: Text(post.description),
                //   ),
                // ),
              );
            },
          ),
        ),
      ),
    );
  }
}
