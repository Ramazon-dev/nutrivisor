import 'package:flutter/material.dart';
import 'package:nutrivisor/index_page/index_page.dart';
import 'package:nutrivisor/model/AppModel.dart';
import 'package:nutrivisor/model/doctor.dart';
import 'package:nutrivisor/nutri_widgets/text_input.dart';
import 'package:nutrivisor/settings_page/setting_item.dart';

class AddDoctorPage extends StatefulWidget {
  AddDoctorPage({Key? key}) : super(key: key);

  final TextEditingController profile = TextEditingController();
  final TextEditingController time = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController hospital = TextEditingController();
  final TextEditingController doctor = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController cabinet = TextEditingController();
  final TextEditingController goal = TextEditingController();
  final TextEditingController questions = TextEditingController();
  final TextEditingController toTake = TextEditingController();
  final TextEditingController additional = TextEditingController();
  @override
  State<AddDoctorPage> createState() => _AddDoctorPageState();
}

class _AddDoctorPageState extends State<AddDoctorPage> {
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
            child: ListView(physics: BouncingScrollPhysics(), children: [
              Text('Гастроэнетролог',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
              SizedBox(height: 32),
              TextInput(
                controller: widget.profile,
                labelText: 'Профиль',
                icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Анна Петкович '),
                  SizedBox(width: 8,),
                  ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                ],),),
              SizedBox(height: 32),
              TextInput(labelText: 'Время',
                controller: widget.time, icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('17:00 '),
                  SizedBox(width: 8,),
                  ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                ],),),
              SizedBox(height: 32),
              TextInput(labelText: 'Дата',
                controller: widget.date, icon: ImageIcon(AssetImage('assets/icons/calendar.png'), color: Color.fromRGBO(103, 119, 126, 1), size: 16),),
              SizedBox(height: 32),
              TextInput(labelText: 'Клиника',
                controller: widget.hospital,),
              SizedBox(height: 32),
              TextInput(labelText: 'Врач',
                controller: widget.doctor,),
              SizedBox(height: 32),
              TextInput(labelText: 'Адрес',
                controller: widget.address,),
              SizedBox(height: 32),
              TextInput(labelText: 'Кабинет',
                controller: widget.cabinet,),
              SizedBox(height: 32),
              TextInput(labelText: 'Цель визита',

                controller: widget.goal,),
              SizedBox(height: 32),
              SettingItem(name: 'Напоминать',),
              SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(252, 182, 20, 0.08)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Вопросы', style: TextStyle(fontSize: 16,  color: Color.fromRGBO(141, 99, 2, 1),)),
                      TextField(maxLines: null,
                      controller: widget.questions,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(252, 182, 20, 0.08)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Взять с собой', style: TextStyle(fontSize: 16,  color: Color.fromRGBO(141, 99, 2, 1),)),
                      TextField(maxLines: null,
                      controller: widget.toTake,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(252, 182, 20, 0.08)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Сделать заметку', style: TextStyle(fontSize: 16,  color: Color.fromRGBO(141, 99, 2, 1),)),
                      TextField(maxLines: null, controller: widget.additional,),
                    ],
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                AppModel.doctors.add(Doctor(profile: widget.profile.text, time: widget.time.text, date: widget.date.text, hospital: widget.hospital.text, doctor: widget.doctor.text, address: widget.address.text, cabinet: widget.cabinet.text, goal: widget.goal.text, questions: widget.questions.text, toTake: widget.toTake.text, additional: widget.additional.text));
                updateIndex.add(0);
              }, child: Text("Добавить")),
            ])));
  }
}
