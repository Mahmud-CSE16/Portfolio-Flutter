import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/components/default_button.dart';
import 'package:mahmud_portfolio/components/my_outline_button.dart';
import 'package:mahmud_portfolio/components/section_title.dart';


import '../../constants.dart';
import 'components/about_section_text.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            SectionTitle(
              title: "About me",
              subTitle: "My Strong Arenas",
              color: Color(0xFF6cf542),
            ),
            MediaQuery.of(context).size.width > 1000 ? BigWidthContainer() : SmallWidthContainer(),
            SizedBox(height: kDefaultPadding * 3),
          SizedBox(
            width: 1110,
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: [
                MyOutlineButton(
                  imageSrc: "assets/images/hand.png",
                  text: "Hire Me!",
                  press: () {},
                ),
                DefaultButton(
                  imageSrc: "assets/images/download.png",
                  text: "Download CV",
                  press: () {},
                ),
              ],
            ),
          ),
          ],
        ),
      );

  }
}

class BigWidthContainer extends StatelessWidget {
  const BigWidthContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                ),
              ),
              ExperienceCard(numOfExp: "1+"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class SmallWidthContainer extends StatelessWidget {
  const SmallWidthContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          ExperienceCard(numOfExp: "1+"),
          SizedBox(height:10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutSectionText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              ),
              SizedBox(height:10),
              AboutSectionText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              ),
            ],
          ),
        
        ],
      ),
    );
  }
}
