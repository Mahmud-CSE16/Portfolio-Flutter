import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocalCard extends StatefulWidget {
  const SocalCard({
    Key key,
    this.iconSrc,
    this.name,
    this.color,
    this.press,
  }) : super(key: key);

  final String iconSrc, name;
  final Color color;
  final Function press;

  @override
  _SocalCardState createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding / 2,
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 45,
                width: 45,
              ),
              MediaQuery.of(context).size.width >800 ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(widget.name, style: TextStyle(fontSize: 20),),
              ):SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
