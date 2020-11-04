import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/sections/about/about_section.dart';
import 'package:mahmud_portfolio/sections/contact/contact_section.dart';
import 'package:mahmud_portfolio/sections/feedback/feedback_section.dart';
import 'package:mahmud_portfolio/sections/follow_us/follow_us.dart';
import 'package:mahmud_portfolio/sections/recent_work/recent_work_section.dart';
import 'package:mahmud_portfolio/sections/service/service_section.dart';
import 'package:mahmud_portfolio/sections/top_section/top_section.dart';

import 'constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final topSectionKey = new GlobalKey();
  final aboutSectionKey = new GlobalKey();
  final serviceSectionKey = new GlobalKey();
  final recentWorkSectionKey = new GlobalKey();
  final feedbackSectionKey = new GlobalKey();
  final contactSectionKey = new GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              key: topSectionKey,
              child: TopSection(gotoSectoinMethods: [
                (){
                  //topsectionkey
                  Scrollable.ensureVisible(topSectionKey.currentContext);
                },
                (){
                  //aboutSectionkey
                  Scrollable.ensureVisible(aboutSectionKey.currentContext);
                },
                (){
                  //serviceSectionKey
                  Scrollable.ensureVisible(serviceSectionKey.currentContext);
                },
                (){
                  //recentWrokSectionKey
                  Scrollable.ensureVisible(recentWorkSectionKey.currentContext);
                },
                (){
                  //feedbackSectionKey
                  Scrollable.ensureVisible(feedbackSectionKey.currentContext);
                },
                (){
                  //contactSectionKey
                  Scrollable.ensureVisible(contactSectionKey.currentContext);
                },
              ],),
            ),
            SizedBox(height: kDefaultPadding * 2),
            Container(
              key: aboutSectionKey,
              child: AboutSection()),
            Container(
              key: serviceSectionKey,
              child: ServiceSection()),
            Container(
              key: recentWorkSectionKey,
              child: RecentWorkSection()),
            Container(
              key: feedbackSectionKey,
              child: FeedbackSection()),
            Container(
              key: contactSectionKey,
              child: ContactSection()),
            Container(
              //key: contactSectionKey,
              child: FollowSection()),
          ]
        ),
      ),
    );
  }
}