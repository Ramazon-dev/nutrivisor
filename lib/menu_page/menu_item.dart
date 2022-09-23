import 'package:flutter/material.dart';
import 'package:nutrivisor/const.dart';
import 'package:nutrivisor/menu_page/menu_page.dart';

class NotificationItem extends StatefulWidget {
  const NotificationItem({Key? key, required this.model}) : super(key: key);

  final MenuItemModel model;

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {

  int count = 3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Row(children: [
        ImageIcon(AssetImage('assets/icons/${widget.model.icon}.png'), size: 16, color: Color.fromRGBO(103, 119, 126, 1),),
        SizedBox(width: 16,),
        Text(widget.model.name),
      ],),
      Container(
        width: 28,
        height: 20,
        decoration: BoxDecoration(
          color: Nutri.color,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(child: Text(count.toString(), style: TextStyle(color: Colors.white))),
      )
    ],);
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({Key? key, required this.model}) : super(key: key);

  final MenuItemModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => model.widget));
      },
      child: Row(children: [
        ImageIcon(AssetImage('assets/icons/${model.icon}.png'), size: 16, color: Color.fromRGBO(103, 119, 126, 1),),
        SizedBox(width: 16,),
        Text(model.name,),
      ],),
    );
  }
}

