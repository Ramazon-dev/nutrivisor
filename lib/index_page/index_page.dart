import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nutrivisor/add_doctor_page/add_doctor_page.dart';
import 'package:nutrivisor/doctor_page/doctor_page.dart';
import 'package:nutrivisor/doctors_page/doctors_page.dart';
import 'package:nutrivisor/index_page/event_item.dart';
import 'package:nutrivisor/index_page/launch_button.dart';
import 'package:nutrivisor/index_page/notification_item.dart';
import 'package:nutrivisor/menu_page/menu_page.dart';
import 'package:nutrivisor/model/AppModel.dart';
import 'package:nutrivisor/model/doctor.dart';
import 'package:nutrivisor/nutri_widgets/circle_progress_bar.dart';
import 'package:nutrivisor/nutri_widgets/cycle_widget.dart';
import 'package:nutrivisor/nutri_widgets/doctor_date.dart';
import 'package:nutrivisor/nutri_widgets/program_widgets.dart';
import 'package:nutrivisor/program_edit_page/program_add.dart';
import 'package:nutrivisor/program_edit_page/program_edit_page.dart';
import 'package:nutrivisor/program_info_page/PackProgram.dart';
import 'package:nutrivisor/program_info_page/program_el_page.dart';
import 'package:nutrivisor/program_info_page/program_model.dart';

StreamController<int> updateIndex = StreamController.broadcast();

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateIndex.stream.listen((event) {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  reverseTransitionDuration: Duration.zero,
                    opaque: false,
                    pageBuilder: (context, _, __) => MenuPage()));
              },
              child: ImageIcon(
                AssetImage('assets/icons/menu.png'),
                size: 32,
                color: Colors.black,
              ),
            ),
            Text('Nutrivisor', style: TextStyle(color: Colors.black)),
            CircleAvatar(
              child: Center(
                child: Text('В'),
              ),
            )
          ],
        )),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
              clipBehavior: Clip.none,
              physics: BouncingScrollPhysics(),
              children: [
                Text('Привет, Василий!',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                SizedBox(height: 16),
                Container(
                  height: 192,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Заголовок\nВ две строки',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CircleProgressBar(
                        textValue: '2',
                        isPercent: false,
                        label: 'Активных\nПрограмм',
                        value: 0.0,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: CircleProgressBar(
                        textValue: '10',
                        isPercent: false,
                        label: 'Активных\nЭлементов',
                        value: 0.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: CircleProgressBar(
                        textValue: '70',
                        isPercent: true,
                        label: 'Процент\nвыполнения',
                        value: 0.7,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: CircleProgressBar(
                        textValue: '90',
                        isPercent: true,
                        label: 'Использовано\nв срок',
                        value: 0.9,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 48),
                Text('Уведомления',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                SizedBox(
                  height: 16,
                ),
                NotificationItem(
                    text:
                        'У вас заканчивается элемент для профиль, средства хватит еще на 10 дней (3 раза) использования'),
                SizedBox(height: 48),
                Text('Ближайшие события',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                SizedBox(height: 16,),
                EventItem(
                    name: 'Программа 1',
                    date: '30.10.2021 в 13:00',
                    current: 8,
                    all: 9),
                SizedBox(height: 8,),
                EventItem(
                    name: 'Программа 2',
                    date: '30.10.2021 в 13:00',
                    current: 3,
                    all: 9),
                SizedBox(height: 48),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProgramAddPage()),
                    );
                  },
                  child: Text('Программы',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                ),
                SizedBox(height: 16,),
                ...AppModel.programs.map((Program e) => Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProgramEditPage(program: e,)),
                          );
                        },
                        child: ProgramWidget(date: e.dateBegin, name: e.programName, percent: 0, state: 0,)),
                    SizedBox(height: 12,)
                  ],
                )),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddDoctorPage()),
                    );
                  },
                  child: Text('Мои приёмы у врача',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                ),
                SizedBox(height: 16,),
                ...AppModel.doctors.map((Doctor e) => Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DoctorPage(doctor: e,)),
                          );
                        },
                        child: DoctorDateWidget(doctor: e)),
                    SizedBox(height: 12,)
                  ],
                )),
                SizedBox(height: 48,),
                Text('Цикл',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                SizedBox(height: 12),
                CycleWidget(chance: '10', day: '2', delay: '5',),
                SizedBox(height: 48,),
                Text('Действия',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(child: LaunchButton(iconName: 'elements', actionText: 'Подобрать\nэлементы\nи продукты',)),
                    SizedBox(width: 8,),
                    Expanded(child: LaunchButton(iconName: 'dictionary', actionText: 'Справочник\nэлементов\nи продуктов',))
                  ],
                ),
                SizedBox(height: 8),
                LaunchButton(iconName: 'launch_test', actionText: 'Пройти тест',)

              ]),
        ),
      ),
    );
  }
}
