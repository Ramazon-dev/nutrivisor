import 'package:flutter/material.dart';
import 'package:nutrivisor/nutri_widgets/cycle_widget.dart';
import 'package:nutrivisor/nutri_widgets/doctor_date.dart';
import 'package:nutrivisor/nutri_widgets/my_text.dart';
import 'package:nutrivisor/nutri_widgets/program_widgets.dart';
import 'package:nutrivisor/profiles_page/my_test.dart';
import 'package:nutrivisor/profiles_page/profile_model.dart';
import 'package:nutrivisor/profiles_page/profile_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePaegState();
}

class _ProfilePaegState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
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
                  child: Text('ВФ'),
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
    Text('Профиль',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
      SizedBox(height: 32),
      MyText(text: 'Мой аккаунт'),
      SizedBox(height: 12),
      ProfileView(profile: Profile(age: '30 лет', pic: 'ВФ', name: 'Василий Фамилия', email: 'surname@gmail.com')),
      SizedBox(height: 28),
      MyText(text: 'Мои тесты'),
      SizedBox(height: 16),
      MyTest(text: 'Тест 1', date: '29.09.2021', description: 'Описание'),
      SizedBox(height: 8),
      MyTest(text: 'Тест 2', date: '07.11.2021', description: 'Описание'),
      SizedBox(height: 28),
      MyText(text: 'Мои программы'),
      SizedBox(height: 12,),
      ProgramWidget(date: '29.09-27.10', name: 'Программа 1', percent: 50, state: 0),
      SizedBox(height: 8,),
      ProgramWidget(date: '12.10-27.10', name: 'Программа 2', percent: 0, state: 1),
      SizedBox(height: 8,),
      ProgramWidget(date: '29.10-27.11', name: 'Программа 3', percent: 100, state: 2),
      SizedBox(height: 32),
      MyText(text: 'Мои приёмы у врача'),
      SizedBox(height: 12,),
      SizedBox(height: 32),
      MyText(text: 'Цикл'),
      SizedBox(height: 12,),
      CycleWidget(day: '2', delay: '5', chance: '10')
    ])));
  }
}
