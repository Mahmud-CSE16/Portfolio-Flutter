import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/components/default_button.dart';
import 'package:mahmud_portfolio/components/section_title.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../constants.dart';
import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
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
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width >650 ?kDefaultPadding:10),
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding * 2.5),
            SectionTitle(
              title: "Contact Me",
              subTitle: "For Project inquiry and information",
              color: Color(0xFF07E24A),
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
                color: Color(0xFFE4FFC7),
                iconSrc: "assets/images/whatsapp.png",
                name: 'WhatsApp',
                press: () async{
                  const url = 'https://wa.me/+8801521404361';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                },
              ),
              SocalCard(
                color: Color(0xFFD9FFFC),
                iconSrc: "assets/images/telegram.png",
                name: 'Telegram',
                press: () async{
                  const url = 'https://t.me/message/965255086';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                },
              ),
              SocalCard(
                color: Color(0xFFE8F0F9),
                iconSrc: "assets/images/messenger.png",
                name: 'Messenger',
                press: () async{
                  const url = 'https://m.me/mahmudul7959';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                },
              ),
            ],
          ),
          SizedBox(height: 2*kDefaultPadding),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: kDefaultPadding,
            runSpacing: kDefaultPadding,
            children: [
              InkWell(
                onTap: () async{
                  const url = 'mailto:mahmud@prottoy.com.bd';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/images/contact_email.png", height: 30,width: 30,),
                    SizedBox(width: 7,),
                    //Text("mahmud@prottoy.com.bd"),
                    SelectableText("mahmud@prottoy.com.bd",
                      cursorColor: Colors.red,
                      showCursor: true,
                      toolbarOptions: ToolbarOptions(
                          copy: true,
                          selectAll: true,
                          cut: false,
                          paste: false
                      ),
                      style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              InkWell(
                onTap: ()async{
                  const url = 'tel:+8801521404361';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/images/phone.png", height: 30,width: 30,),
                    SizedBox(width: 7,),
                    SelectableText("+8801521404361",
                      cursorColor: Colors.red,
                      showCursor: true,
                      toolbarOptions: ToolbarOptions(
                          copy: true,
                          selectAll: true,
                          cut: false,
                          paste: false
                      ),
                      style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 2*kDefaultPadding),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: FittedBox(
            child: DefaultButton(
              imageSrc: "assets/images/contact_icon.png",
              text: "Contact Me!",
              press: () async{
                const url = 'mailto:mahmud@prottoy.com.bd';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
              },
            ),
          ),
        )
      ],
    );
  }
}
