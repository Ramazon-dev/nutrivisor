import 'package:flutter/material.dart';
import 'package:nutrivisor/const.dart';

class ProgramWidget extends StatefulWidget {
  const ProgramWidget(
      {Key? key,
      required this.name,
      required this.percent,
        required this.date,
      required this.state})
      : super(key: key);

  final int state;
  final String name;
  final int percent;
  final String date;

  @override
  State<ProgramWidget> createState() => _ProgramWidgetState();
}

class _ProgramWidgetState extends State<ProgramWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: containerColor[widget.state],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: headerColor[widget.state],
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      textStatus[widget.state],
                      style: TextStyle(
                        color: headerColor[widget.state].withOpacity(0.5),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.12),
                  ),
                  child: Center(child: ImageIcon(AssetImage('assets/icons/bin.png'), size: 10, color: headerColor[widget.state],)),
                ),
              ],
            ),
            SizedBox(height: 16),
            LinearProgressIndicator(
              value: (widget.percent / 100.0),
              valueColor: AlwaysStoppedAnimation<Color>(
            Colors.white),
              color: Colors.white.withOpacity(0.12),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('${widget.percent}%', style: TextStyle(color: headerColor[widget.state]),),
              Text(widget.date, style: TextStyle(color: statusColor[widget.state].withOpacity(0.5)),),
            ],)
          ],
        ),
      ),
    );
  }

  final statusColor = [
    Colors.white,
    Color.fromRGBO(34, 101, 195, 1),
    Colors.white,
  ];

  final headerColor = [
    Colors.white,
    Nutri.color,
    Colors.white,
  ];

  final textStatus = ['Активна', 'Предстоит', 'Завершена'];

  final containerColor = [
    Nutri.color,
    Color.fromRGBO(235, 242, 251, 1),
    Color.fromRGBO(0, 172, 77, 1),
  ];
}
