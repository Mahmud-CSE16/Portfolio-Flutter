import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/components/section_title.dart';
import 'package:mahmud_portfolio/models/my_skills.dart';
import 'package:mahmud_portfolio/models/service.dart';
import 'package:mahmud_portfolio/sections/my_skills/components/myskill_card.dart';

import '../../constants.dart';
class MySkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width >650 ?kDefaultPadding:10),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "My Skills",
            subTitle: "My Strong Arenas",
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding,
                children: List.generate(
                    myskills.length, (index) => MySkillsCard(index: index)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
