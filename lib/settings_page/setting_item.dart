import 'package:flutter/cupertino.dart';

class SettingItem extends StatefulWidget {
  const SettingItem({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.name, style: TextStyle(fontSize: 16),),
        CupertinoSwitch(value: isPressed, onChanged: (value) {setState(() {
          isPressed = value;
        });})
      ],
    );
  }
}
