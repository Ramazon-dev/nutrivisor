import 'package:flutter/material.dart';
import 'package:nutrivisor/model/doctor.dart';

class DoctorDateWidget extends StatefulWidget {
  const DoctorDateWidget({Key? key,
    required this.doctor
  }) : super(key: key);

  final Doctor doctor;

  @override
  State<DoctorDateWidget> createState() => _DoctorDateWidgetState();
}

class _DoctorDateWidgetState extends State<DoctorDateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color.fromRGBO(217, 224, 227, 1))
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.doctor.doctor,
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 4),
            Text(widget.doctor.address,
                style:
                TextStyle( color: Color.fromRGBO(103, 119, 126, 1), fontSize: 12)),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                 color: Color.fromRGBO(246, 248, 249, 1),
            ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(widget.doctor.time,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Row(children: [
                      Text(widget.doctor.date,
                          style:
                          TextStyle( color: Color.fromRGBO(103, 119, 126, 1), fontSize: 12)),
                      SizedBox(width: 12),
                      ImageIcon(AssetImage('assets/icons/calendar.png'), size: 16),
                    ],)
                ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
