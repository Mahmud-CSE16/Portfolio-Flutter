import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width/3.7,maxHeight: MediaQuery.of(context).size.height,),
      child: Image.asset("assets/images/person.webp"),
    );
  }
}
