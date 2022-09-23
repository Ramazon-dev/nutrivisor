import 'package:flutter/material.dart';
import 'package:nutrivisor/const.dart';
import 'package:nutrivisor/nutri_widgets/bullet.dart';

class BulletItem extends StatelessWidget {
  const BulletItem({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: BulletWidget(),
      ),
      SizedBox(width: 11),
      Expanded(child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Nutri.textHeaderColor),))
    ],);
  }
}
