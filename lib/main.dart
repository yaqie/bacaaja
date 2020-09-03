import 'package:flutter/material.dart';
import 'package:news/colors.dart';
import 'package:news/pages/dunia.dart';
import 'package:news/pages/media.dart';
import 'package:news/pages/dashboard.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        home: MyStatefulWidget(),
        debugShowCheckedModeBanner: false);
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> screens = [
    Dashboard(),
    Media(),
    Dunia(),
  ];

  // Active Pages
  Widget currentScreen = Dashboard(); // initial screen in viewport

  final PageStorageBucket bucket = PageStorageBucket();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
      if (_selectedIndex == 0) {
        currentScreen = Dashboard();
      } else if (_selectedIndex == 1) {
        currentScreen = Dunia();
      } else if (_selectedIndex == 2) {
        currentScreen = Media();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Jelajahi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Media'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: PrimaryColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
      ),
    );
  }
}
