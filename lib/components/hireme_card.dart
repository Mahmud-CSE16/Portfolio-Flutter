import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/components/default_button.dart';
import 'package:mahmud_portfolio/components/my_outline_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:kDefaultPadding,horizontal: kDefaultPadding*2),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          MediaQuery.of(context).size.width > 800 ? Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Image.asset(
              "assets/images/email.webp",
              height: 80,
              width: 80,
            ),
          ):SizedBox(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                   child: Text(
                    "Starting New Project?",
                    style: TextStyle(fontSize:35,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: kDefaultPadding / 2),
                FittedBox(
                  fit: BoxFit.contain,
                    child: Text(
                    "Get an estimate for the new project",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width:10),
          DefaultButton(
            text: "Hire Me!",
            imageSrc: "assets/images/hand.webp",
            press: () async{
              const url = 'mailto:mahmud@prottoy.com.bd';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
            },
          )
        ],
      ),
    );
  }
}
