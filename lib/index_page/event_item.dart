import 'package:flutter/material.dart';

class EventItem extends StatefulWidget {
  const EventItem({
    Key? key,
    required this.name,
    required this.date,
    required this.current,
    required this.all,
  }) : super(key: key);

  final String name;
  final String date;
  final int current;
  final int all;

  @override
  State<EventItem> createState() => _EventItemState();
}

class _EventItemState extends State<EventItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(246, 248, 249, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name, style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,)),
                    SizedBox(height: 2),
                    Text('След. исп. ${widget.date}', style: TextStyle(
                      color: Color.fromRGBO(103, 119, 126, 1),
                        fontSize: 12, fontWeight: FontWeight.w500,),),
                  ],
                ),
                Text('${(widget.current / widget.all * 100.0).round()}%', style: TextStyle(
                  fontSize: 39, fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            SizedBox(height: 13),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Осталось', style: TextStyle(
                    color: Color.fromRGBO(103, 119, 126, 1),
                    fontSize: 12, fontWeight: FontWeight.w500,),),
                  Text('${widget.all - widget.current} дн.', style: TextStyle(
                    fontSize: 15,
                  ),),
                ],),
              ),
                SizedBox(width: 10),
              Expanded(
                  flex: 20,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: LinearProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(20, 184, 156, 1)),
                      color: Colors.deepOrange,
                      backgroundColor:  Color.fromRGBO(217, 224, 227, 1),
                      value: (widget.current / widget.all)
                    ),
                  )),
              SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: Row(children: [
                  Text('${widget.current}',  style: TextStyle(
                  fontSize: 14,
                ),),
                  Text('/',  style: TextStyle(
                    color: Color.fromRGBO(129, 144, 152, 1),
                    fontSize: 13,
                  ),),
                  Text('${widget.all}',  style: TextStyle(
                    color: Color.fromRGBO(129, 144, 152, 1),
                    fontSize: 13,
                  ),),
                ],),
              )
            ],)
          ],
        ),
      ),
    );
  }
}
