import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextInput({Key? key, required this.labelText, this.controller, this.icon}) : super(key: key);

  final String labelText;
  Widget? icon;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
            style: const TextStyle(color: Colors.black, fontSize: 16),
            controller: controller,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: const TextStyle(color: Color.fromRGBO(103, 119, 126, 1), fontSize: 16),

              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(217, 224, 227, 1),
                  width: 1.0,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(217, 224, 227, 1),
                  width: 1.0,
                ),
              ),
              disabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(217, 224, 227, 1),
                  width: 1.0,
                ),
              ),
            )),
        Positioned.fill(child: Align(alignment: Alignment.centerRight, child: icon,))
      ],
    );
  }
}
