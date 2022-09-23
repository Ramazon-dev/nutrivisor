import 'package:flutter/material.dart';

class CycleWidget extends StatefulWidget {
  const CycleWidget({
    Key? key,
    required this.day,
    required this.delay,
    required this.chance,
  }) : super(key: key);

  final String day;
  final String delay;
  final String chance;

  @override
  State<CycleWidget> createState() => _CycleWidgetState();
}

class _CycleWidgetState extends State<CycleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(
            thickness: 1,
            color: Color.fromRGBO(217, 224, 227, 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(widget.day,
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                    SizedBox(
                      height: 8,
                    ),
                    Text('День\nЦикла',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(103, 119, 126, 1),
                            height: 1.4,
                            fontSize: 12)),
                  ]),
              Container(
                width: 1,
                height: 32,
                color:  Color.fromRGBO(217, 224, 227, 1),
              ),

              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(widget.delay,
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Задержка,\nдней',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(103, 119, 126, 1),
                            height: 1.4,
                            fontSize: 12)),
                  ]),
              Container(
                width: 1,
                height: 32,
                color:  Color.fromRGBO(217, 224, 227, 1),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${widget.chance}%',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(219, 69, 0, 1), fontSize: 24)),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Шансы\nзабеременеть',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(103, 119, 126, 1),
                            height: 1.4,
                            fontSize: 12)),
                  ]),
            ],
          )
        ],
      ),
    );
  }
}
