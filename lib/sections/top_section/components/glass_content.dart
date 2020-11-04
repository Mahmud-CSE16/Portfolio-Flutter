import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
        constraints:
            BoxConstraints(maxWidth: size.width * 0.7, maxHeight: size.width * 0.3),
        width: double.infinity,
        color: Colors.white.withOpacity(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello There!",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*.02,
                color: Colors.white,
                height: 1.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Md. Mahmudul Islam",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*.04,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Full Stack Developer | Android | iOS | Flutter | Django | React | SQL | RDBMS | Git",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*.012,
                color: Colors.white,
                height: 2,
              ),
            ),
            SizedBox(height: 5.0,),
            Text(
              "Chief Technical Officer at Prottoy",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*.02,
                color: Colors.white,
                height: 1.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
