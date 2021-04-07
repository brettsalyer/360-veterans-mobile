import 'package:flutter/material.dart';
/*
Author: Brett Salyer
Date: 03-22-2021
Desc: A BottomNavigationBar. I moved it to its own file
to reduce complexity in the main.dart file. 

*/

class NavBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onClicked;

  NavBar({@required this.selectedIndex, @required this.onClicked});
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.view_list_rounded),
          label: 'Status',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Account',
        ),
      ],
      onTap: widget.onClicked,
      currentIndex: widget.selectedIndex,
      backgroundColor: Colors.red,
      selectedItemColor: Colors.lightBlueAccent,
      unselectedItemColor: Colors.white,
    );
  }
}
