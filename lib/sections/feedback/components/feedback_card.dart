import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/models/feedback.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async{
        var url = feedbacks[widget.index].profileUrl;
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
      },
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 3, horizontal: kDefaultPadding*.5),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 300,
        width: 250,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -45),
              child: AnimatedContainer(
                duration: duration,
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 7),
                  boxShadow: [if (!isHover) kDefaultCardShadow],
                ),
                child: ClipOval(
                  child: Image.asset(feedbacks[widget.index].userPic),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              style: TextStyle(
                color: kTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                height: 1.4,
              ),
            ),
            Expanded(child: SizedBox(height: kDefaultPadding)),
            Text(
              feedbacks[widget.index].name+" ->",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
          ],
        ),
      ),
    );
  }
}
