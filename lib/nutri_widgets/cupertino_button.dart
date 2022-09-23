import 'package:flutter/material.dart';
import 'package:nutrivisor/const.dart';

class CupertinoButton extends StatelessWidget {
  CupertinoButton({Key? key, required this.children, this.onPressed}) : super(key: key);

  final List<Widget> children;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0.0),
          foregroundColor: MaterialStateProperty.all(Nutri.color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Nutri.color),
                ),
            )
        ),
        onPressed: onPressed, child: Row(
      children: children,
    ));
  }
}
