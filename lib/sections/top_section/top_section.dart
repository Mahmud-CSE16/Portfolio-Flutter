import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {

  final List<Function> gotoSectoinMethods;

  const TopSection({@required this.gotoSectoinMethods});


  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      height: MediaQuery.of(context).size.width*.6,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/top-bg.gif"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: MediaQuery.of(context).size.width*.9,
        child: Stack(
          children: [
            LogoAndBlurBox(size: MediaQuery.of(context).size),
            Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Menu(gotoSectoinMethods: gotoSectoinMethods,),
            ),
          ],
        ),
      ),
    );
  }
}
