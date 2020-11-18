import 'package:flutter/material.dart';
import 'package:mahmud_portfolio/models/my_skills.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';



class MySkillsCard extends StatefulWidget {
  const MySkillsCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _MySkillsCardState createState() => _MySkillsCardState();
}

class _MySkillsCardState extends State<MySkillsCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
        width: 250,
        duration: duration,
        padding: EdgeInsets.symmetric(vertical:15,horizontal: 15),
        decoration: BoxDecoration(
          color: myskills[widget.index].backgoundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [if (isHover) BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 15,
                      color: Colors.black.withOpacity(0.2),
                    )],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularPercentIndicator(
              circularStrokeCap:CircularStrokeCap.round,
              radius: 60,
              percent: myskills[widget.index].percent/100,
              center: Image.asset(myskills[widget.index].image,width: 35,),
              progressColor: myskills[widget.index].indicatorColor,
              backgroundColor: Colors.blue.withOpacity(.2),
              lineWidth: 2.5,
            ),
            SizedBox(width: 20,),
            Text(myskills[widget.index].title,style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w400,),)
          ],
        ),
      ),
    );
  }
}
