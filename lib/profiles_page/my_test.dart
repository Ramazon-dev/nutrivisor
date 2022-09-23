import 'package:flutter/material.dart';

class MyTest extends StatelessWidget {
  const MyTest({Key? key, required this.text, required this.date, required this.description}) : super(key: key);

  final String text;
  final String description;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(246, 248, 249, 1),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: TextStyle(color: Colors.black, fontSize: 16,),),
                Text(description, style: TextStyle(color: Color.fromRGBO(103, 119, 126, 1), fontSize: 12),),
              ],
            ),
            Text(date, style: TextStyle(color: Color.fromRGBO(103, 119, 126, 1), fontSize: 12),),
          ],
        ),
      ),
    );
  }
}
