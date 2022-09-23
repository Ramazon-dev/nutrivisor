import 'package:flutter/material.dart';
import 'package:nutrivisor/model/AppModel.dart';
import 'package:nutrivisor/nutri_widgets/doctor_date.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Приёмы врачей',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                  SizedBox(height: 24),
                  ...AppModel.doctors.map((e) => Column(
                    children: [
                      DoctorDateWidget(doctor: e),
                      SizedBox(height: 8,)
                    ],
                  )),
                ])));
  }
}
