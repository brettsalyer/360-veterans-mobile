import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veterans_mobile/widgets/home_header.dart';

/*
Author: Brett Salyer
Date: 03-22-2021
Desc: The template for the home page

*/

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: HomeHeader(), flex: 1, fit: FlexFit.tight),
        Flexible(
          child: Container(color: Colors.indigo),
          flex: 3,
        )
      ],
    );
  }
}
