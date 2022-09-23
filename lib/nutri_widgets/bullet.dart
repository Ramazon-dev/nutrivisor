import 'package:flutter/material.dart';

class BulletWidget extends StatelessWidget {
  const BulletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      CircleAvatar(
        backgroundColor: Color.fromRGBO(160, 168, 174, 1),
        radius: 3,);

  }
}
