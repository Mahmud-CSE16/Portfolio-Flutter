import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/components/default_button.dart';
import 'package:mahmud_portfolio/components/my_outline_button.dart';
import 'package:mahmud_portfolio/components/section_title.dart';
import 'package:url_launcher/url_launcher.dart';


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
              title: "About my story",
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
                  press: () async{
                    const url = 'mailto:mahmud@prottoy.com.bd';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                  },
                ),
                DefaultButton(
                  imageSrc: "assets/images/download.png",
                  text: "Download CV",
                  press: () async{
                    const url = 'https://drive.google.com/drive/folders/1Qn8GaTk5G5IBzf6ATwr-CTp0FXOHFgtq?usp=sharing';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                  },
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
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: TextStyle(fontSize: 15 ,height: 2),
                    children: [
                      TextSpan(
                        text: "I'm an undergraduate student at Computer Science and Technology at",
                        style: TextStyle(fontWeight: FontWeight.w400,color: kTextColor)
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = ()async{
                          const url = 'http://www.kuet.ac.bd/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                        text: " Khulna University of Engineering and Technology",
                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.blueAccent)
                      ),
                      TextSpan(
                        text: ". Now, I(we) am fully dedicated to establishing an ed-tech company",
                        style: TextStyle(fontWeight: FontWeight.w400,color: kTextColor)
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = ()async{
                          const url = 'https://prottoy.com.bd/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                        text: " Prottoy ",
                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.blueAccent),
                      ),
                      TextSpan(
                        text: "in Bangladesh.",
                        style: TextStyle(fontWeight: FontWeight.w400,color: kTextColor, )
                      ),
                    ]
                  ),

                )
              ),
              ExperienceCard(numOfExp: "1+"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "I'm fully passionate to develop something new with the latest technology. I have experience developing 8+ Mobile apps and 3+ websites as well as working as a team member and lead the team.",
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
              RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: TextStyle(fontSize: 15 ,height: 2),
                    children: [
                      TextSpan(
                        text: "I'm an undergraduate student at Computer Science and Technology at",
                        style: TextStyle(fontWeight: FontWeight.w400,color: kTextColor)
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = ()async{
                          const url = 'http://www.kuet.ac.bd/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                        text: " Khulna University of Engineering and Technology",
                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.blueAccent)
                      ),
                      TextSpan(
                        text: ". Now, I(we) am fully dedicated to establishing an ed-tech company",
                        style: TextStyle(fontWeight: FontWeight.w400,color: kTextColor)
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = ()async{
                          const url = 'https://prottoy.com.bd/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                        text: " Prottoy ",
                        style: TextStyle(fontWeight: FontWeight.w400,color: Colors.blueAccent),
                      ),
                      TextSpan(
                        text: "in Bangladesh.",
                        style: TextStyle(fontWeight: FontWeight.w400,color: kTextColor, )
                      ),
                    ]
                  ),

                ),
              SizedBox(height:10),
              AboutSectionText(
                text:
                    "I'm fully passionate to develop something new with the latest technology. I have experience developing 8+ Mobile apps and 3+ websites as well as working as a team member and lead the team.",
              ),
            ],
          ),
        
        ],
      ),
    );
  }
}
