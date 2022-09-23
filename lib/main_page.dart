import 'package:flutter/material.dart';
import 'package:nutrivisor/about_page/about_page.dart';
import 'package:nutrivisor/account_page/account_page.dart';
import 'package:nutrivisor/add_doctor_page/add_doctor_page.dart';
import 'package:nutrivisor/doctor_page/doctor_page.dart';
import 'package:nutrivisor/doctors_page/doctors_page.dart';
import 'package:nutrivisor/index_page/index_page.dart';
import 'package:nutrivisor/menu_page/menu_page.dart';
import 'package:nutrivisor/notification/notification_page.dart';
import 'package:nutrivisor/profile_page/profile_page.dart';
import 'package:nutrivisor/profiles_page/profiles_page.dart';
import 'package:nutrivisor/program_edit_page/program_edit_page.dart';
import 'package:nutrivisor/program_info_page/program_el_page.dart';
import 'package:nutrivisor/program_item_edit/program_item_edit.dart';
import 'package:nutrivisor/settings_page/settings_page.dart';
import 'package:nutrivisor/test_end_page/test_end_page.dart';
import 'package:nutrivisor/test_result_page/test_page.dart';

import 'test_page/test_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          IndexPage(),
        ],
      ),
    );
  }
}
/*
ProgramInfoPage(),
          ProgramItemEdit(),
          ProgramEditPage(),
          AddDoctorPage(),
          DoctorPage(),
          DoctorsPage(),
          AccountPage(),
          ProfilePage(),

          AboutPage(),

          TestEndPage()

          TestResultPage(),
* */
