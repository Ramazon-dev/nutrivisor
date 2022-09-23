import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: Color.fromRGBO(103, 119, 126, 1)),
    );
  }
}
