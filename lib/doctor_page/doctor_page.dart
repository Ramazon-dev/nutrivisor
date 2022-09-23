import 'package:flutter/material.dart';
import 'package:nutrivisor/doctor_page/date_time_conatiner.dart';
import 'package:nutrivisor/model/doctor.dart';
import 'package:nutrivisor/nutri_widgets/my_text.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key, required this.doctor}) : super(key: key);

  final Doctor doctor;
  @override
  State<DoctorPage> createState() => _DoctorState();
}

class _DoctorState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: ImageIcon(
                  AssetImage('assets/icons/back_arrow.png'),
                  size: 16,
                  color: Color.fromRGBO(43, 51, 59, 1),
                ),
              ),
              CircleAvatar(
                child: Center(
                  child: Text('A'),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              physics: BouncingScrollPhysics(),
                children: [
                  Text(widget.doctor.profile,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                  SizedBox(height: 24),
                  Text('Анна Петкович', style: TextStyle(fontSize: 14,color: Color.fromRGBO(103, 119, 126, 1)),),
                  SizedBox(height: 16),
                  DateTimeContainer(time: widget.doctor.time, date: widget.doctor.date),
                  SizedBox(height: 24),
                  MyText(text: 'Клиника',),
                  SizedBox(height: 8),
                  Text(widget.doctor.hospital),
                  SizedBox(height: 24),
                  MyText(text: 'Врач',),
                  SizedBox(height: 8),
                  Text(widget.doctor.doctor),
                  SizedBox(height: 24),
                  MyText(text: 'Адрес',),
                  SizedBox(height: 8),
                  Text(widget.doctor.address),
                  SizedBox(height: 24),
                  MyText(text: 'Кабинет',),
                  SizedBox(height: 8),
                  Text(widget.doctor.cabinet),
                  SizedBox(height: 24),
                  MyText(text: 'Цель визита',),
                  SizedBox(height: 8),
                  Text(widget.doctor.goal),
                  SizedBox(height: 24),
                  MyText(text: 'Мои вопросы',),
                  SizedBox(height: 8),
                  Text(widget.doctor.questions, style: TextStyle(height: 1.4),),
                  SizedBox(height: 24),
                  MyText(text: 'Взять с собой',),
                  SizedBox(height: 8),
                  Text(widget.doctor.toTake, style: TextStyle(height: 1.4),),
                  SizedBox(height: 24),
                  MyText(text: 'Примечание',),
                  SizedBox(height: 8),
                  Text(widget.doctor.additional, style: TextStyle(height: 1.4),),
                  SizedBox(height: 32),
                  Container(
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Color.fromRGBO(26, 129, 229, 0.5))),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(
                          'Добавить напоминание',
                        ),
                      ),
                    ),
                  ),
                ])));
  }
}
