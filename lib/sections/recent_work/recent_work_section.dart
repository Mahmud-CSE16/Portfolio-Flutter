import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/components/hireme_card.dart';
import 'package:mahmud_portfolio/components/section_title.dart';
import 'package:mahmud_portfolio/models/recent_work.dart';

import '../../constants.dart';
import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width >650 ?kDefaultPadding:10),
      width: double.infinity,
      // just for demo
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: "Recent Works",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFFB100),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(index: index, press: () {}),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
