import 'package:flutter/material.dart';

class TestResultWidget extends StatelessWidget {
  const TestResultWidget({Key? key, required this.text, required this.date}) : super(key: key);

  final String text;
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
                Text(date, style: TextStyle(color: Color.fromRGBO(103, 119, 126, 1), fontSize: 12),),
              ],
            ),
            ImageIcon(AssetImage('assets/icons/forward_arrow.png'), color: Color.fromRGBO(43, 51, 59, 1), size: 16),
          ],
        ),
      ),
    );
  }
}
