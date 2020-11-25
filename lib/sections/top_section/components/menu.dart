import 'package:flutter/material.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {

  final List<Function> gotoSectoinMethods;

  const Menu({@required this.gotoSectoinMethods});

  

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contact"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.06),
      constraints: BoxConstraints(maxWidth: 1110,maxHeight: 60, minHeight: 40),
      height: MediaQuery.of(context).size.width*.07,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
            widget.gotoSectoinMethods[index]();
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width/8,maxHeight: 80),
          height: MediaQuery.of(context).size.width*.11,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: TextStyle(fontSize: MediaQuery.of(context).size.width*.025 > 20 ? 20 :MediaQuery.of(context).size.width*.025 , color: kTextColor),
              ),
              // Hover
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -(1+MediaQuery.of(context).size.width*.02) : -(25+MediaQuery.of(context).size.width*.02),
                child: Image.asset("assets/images/Hover.png"),
              ),
              // Select
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -(-5+MediaQuery.of(context).size.width*.02) : -(25+MediaQuery.of(context).size.width*.02),
                child: Image.asset("assets/images/Hover.png"),
              ),
            ],
          ),
        ),
      );
}
