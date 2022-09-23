import 'package:flutter/material.dart';

class TestAnswerWidget extends StatefulWidget {
  const TestAnswerWidget({Key? key}) : super(key: key);

  @override
  State<TestAnswerWidget> createState() => _TestAnswerWidgetState();
}

class _TestAnswerWidgetState extends State<TestAnswerWidget> {
  int choosen = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Вопрос', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
        SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            setState(() {
              choosen = 0;
            });
          },
          child: Row(
            children: [
              choosen == 0 ? Image(image: AssetImage('assets/icons/placeholder_on.png'), width: 22, height: 22,)
               : Image(image: AssetImage('assets/icons/placeholder_off.png'),width: 22, height: 22,),
              SizedBox(width: 12),
              Text('Placeholder'),

    ],
          ),
        ),
        SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            setState(() {
              choosen = 1;
            });
          },
          child: Row(
            children: [
              choosen == 1 ? Image(image: AssetImage('assets/icons/placeholder_on.png'), width: 22, height: 22,)
                  : Image(image: AssetImage('assets/icons/placeholder_off.png'),width: 22, height: 22,),
              SizedBox(width: 12),
              Text('Placeholder'),

            ],
          ),
        ),
        SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            setState(() {
              choosen = 2;
            });
          },
          child: Row(
            children: [
              choosen == 2 ? Image(image: AssetImage('assets/icons/placeholder_on.png'), width: 22, height: 22,)
                  : Image(image: AssetImage('assets/icons/placeholder_off.png'),width: 22, height: 22,),
              SizedBox(width: 12),
              Text('Placeholder'),

            ],
          ),
        ),
      ],
    );
  }
}
