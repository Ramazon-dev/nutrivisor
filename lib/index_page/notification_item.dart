import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(232, 79, 48, 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(text,
                  style: TextStyle(color: Colors.white, fontSize: 15, height: 1.4),
                ),
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                child: Icon(Icons.close, color: Colors.white,),
              )),
        ],
      ),
    );
  }
}
