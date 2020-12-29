import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/components/section_title.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../constants.dart';
import 'components/socal_card.dart';

class FollowSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/follow_us_bg.webp"),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width >650 ?kDefaultPadding:10),
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding * 2.5),
            SectionTitle(
              title: "Follow Me",
              subTitle: "Interested in me",
              color: Color(0xFF1cbde6)
            ),
            ContactBox()
          ],
        ),
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: Color(0xFFc9e0ff),
                iconSrc: "assets/images/linkedin.webp",
                name: 'Linkedin',
                press: () async{
                  const url = 'https://www.linkedin.com/in/mahmudul7959/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                },
              ),
              SocalCard(
                color: Color(0xFFE8F0F9),
                iconSrc: "assets/images/facebook.webp",
                name: 'Facebook',
                press: () async{
                  const url = 'https://fb.me/mahmudul7959';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                },
              ),
              SocalCard(
                color: Color(0xFFabf7ff),
                iconSrc: "assets/images/github.webp",
                name: 'Github',
                press: () async{
                  const url = 'https://github.com/Mahmud-CSE16';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
