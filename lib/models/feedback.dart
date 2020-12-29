import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic,profileUrl;
  final int id;
  final Color color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color, this.profileUrl});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Shahjahan Md Swajan",
    review: "I met Mahmud at Prottoy. Working with him as a team is really amazing. He holds a strong knowledge of database designing. He also has very strong expertise in developing mobile apps.",
    userPic: "assets/images/swajan.webp",
    profileUrl:"https://www.linkedin.com/in/smswajan/",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Anjan Kundu",
    review: "A very talented, Persistent and hardworking guy who is always sinceere about this project work. I feel so blessed having a team partner like him.",
    userPic: "assets/images/anjan.webp",
    color: Color(0xFFD9FFFC),
    profileUrl: "https://www.linkedin.com/in/anjan-kundu-1603/"
  ),
];