import 'package:flutter/material.dart';

class LaunchButton extends StatelessWidget {
  const LaunchButton({Key? key,
  required this.iconName,
    required this.actionText,
  }) : super(key: key);

  final String iconName;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(239, 243, 245, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ImageIcon(AssetImage('assets/icons/$iconName.png'), size: 20,),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(actionText, style: TextStyle(height: 1.4, fontSize: 14, color: Color.fromRGBO(43, 51, 59, 1)),),
              ImageIcon(AssetImage('assets/icons/cupertino_forward_arrow.png'), size: 10),
            ],
          )
        ],),
      ),
    );
  }
}
