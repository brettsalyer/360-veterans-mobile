import 'package:flutter/cupertino.dart';
import 'package:veterans_mobile/widgets/tracking.dart';

/*
Author: Brett Salyer
Date: 03-22-2021
Desc: The template for the tracker page

*/

class TrackerPage extends StatefulWidget {
  @override
  _TrackerPageState createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Tracking(),
    );
  }
}
