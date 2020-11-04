import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/components/section_title.dart';
import 'package:mahmud_portfolio/models/feedback.dart';


import '../../constants.dart';
import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.only(top: kDefaultPadding * 2.5, bottom: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: "Feedback Received",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  feedbacks.length,
                  (index) => FeedbackCard(index: index),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
