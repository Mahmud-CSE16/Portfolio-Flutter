import 'package:flutter/material.dart';

class MySkill{
  final int id;
  final double percent;
  final String title, image;
  final Color backgoundColor,indicatorColor;

  MySkill({this.id,this.percent, this.title, this.image, this.backgoundColor, this.indicatorColor});
}

// For demo list of service
List<MySkill> myskills = [
  MySkill(
    id: 1,
    percent: 85,
    title: "Flutter",
    image: "assets/images/flutter.png",
    backgoundColor: Color(0xFFdef7fa),
    indicatorColor: Color(0xFF1ed1e6),
  ),
  MySkill(
    id: 1,
    percent: 85,
    title: "Android Studio",
    image: "assets/images/android-studio.png",
    backgoundColor: Color(0xFFe1eefa),
    indicatorColor: Color(0xFF1387f2),
  ),
  MySkill(
    id: 1,
    percent: 85,
    title: "Django",
    image: "assets/images/django.png",
    backgoundColor: Color(0xFFe6fcf3),
    indicatorColor: Color(0xFF45b082),
  ),
  MySkill(
    id: 1,
    percent: 70,
    title: "React",
    image: "assets/images/react.png",
    backgoundColor: Color(0xFFebebeb),
    indicatorColor: Color(0xFF2cd5e8),
  ),
  MySkill(
    id: 1,
    percent: 70,
    title: "Laravel",
    image: "assets/images/laravel.png",
    backgoundColor: Color(0xFFffe0e0),
    indicatorColor: Color(0xFFed3b3b),
  ),
  MySkill(
    id: 1,
    percent: 50,
    title: "AWS",
    image: "assets/images/aws.png",
    backgoundColor: Color(0xFFd9d9d9),
    indicatorColor: Color(0xFF08121f),
  ),
  MySkill(
    id: 1,
    percent: 85,
    title: "Git",
    image: "assets/images/git_icon.png",
    backgoundColor: Color(0xFFffe6e6),
    indicatorColor: Color(0xFFed4640),
  ),
  MySkill(
    id: 1,
    percent: 60,
    title: "Adobe Xd",
    image: "assets/images/adobe-xd.png",
    backgoundColor: Color(0xFFfce1f1),
    indicatorColor: Color(0xFF3d0727),
  ),
  
];
