import 'package:flutter/material.dart';
import 'package:nutrivisor/program_info_page/program_el_page.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({Key? key,
  required this.name,
    required this.description,
  }) : super(key: key);

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(name, style: TextStyle(fontSize: 14, color: Color.fromRGBO(103, 119, 126, 1)),),
      SizedBox(width: 8,),
      Expanded(child: MySeparator()),
      SizedBox(width: 8,),
      Text(description, style: TextStyle(fontSize: 14, color: Color.fromRGBO(43, 51, 59, 1))),
    ],);
  }
}
