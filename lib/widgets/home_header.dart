import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: HeaderClipper(),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                    Text(
                      "John Doe",
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.normal,
                          fontSize: 28),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                ),
                Container(
                    margin: EdgeInsets.all(0),
                    child: Image.asset(
                      "images/logo.png",
                      width: 200,
                    ))
              ],
            )));
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(size.width / 2, size.height / 2);
    var endPoint = Offset(size.width / 2, size.height);

    Path path = Path()
      ..lineTo(0, size.height)
      //..quadraticBezierTo(0, size.height * 0.8, endPoint.dx, endPoint.dy * 0.95)
      //..quadraticBezierTo(0, size.width, size.width, size.height * 0.75)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
