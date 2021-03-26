import 'package:flutter/material.dart';
import 'package:veterans_mobile/screens/account_page.dart';
import 'package:veterans_mobile/screens/home_page.dart';
import 'package:veterans_mobile/screens/tracker_page.dart';
import 'package:veterans_mobile/widgets/navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '360 Veteran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(title: 'Welcome to 360 Veteran!'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _pages = <Widget>[HomePage(), TrackerPage(), AccountPage()];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Rebuilding, with index = ");
    print(_selectedIndex);
    // This method is rerun every time setState is called

    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onClicked: _onItemTapped,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: _pages[_selectedIndex],
      ),
    );
  }
}
