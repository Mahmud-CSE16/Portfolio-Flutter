import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/components/section_title.dart';
import 'package:mahmud_portfolio/models/service.dart';

import '../../constants.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2,horizontal: kDefaultPadding),
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    services.length, (index) => ServiceCard(index: index)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
