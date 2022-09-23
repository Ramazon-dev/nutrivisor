import 'package:flutter/material.dart';
import 'package:nutrivisor/add_program_page/add_program_page.dart';
import 'package:nutrivisor/all_programs_page/all_programs_page.dart';
import 'package:nutrivisor/menu_page/menu_item.dart' as MenuItem;
import 'package:nutrivisor/notification/notification_page.dart';
import 'package:nutrivisor/profiles_page/profiles_page.dart';
import 'package:nutrivisor/program_edit_page/program_edit_page.dart';
import 'package:nutrivisor/program_info_page/program_el_page.dart';
import 'package:nutrivisor/settings_page/settings_page.dart';
import 'package:nutrivisor/test_result_page/test_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  final menuItems = [
    MenuItemModel(name: 'Программы', icon: 'program', widget: AllProgramPage()),
    MenuItemModel(name: 'Тесты', icon: 'test', widget: TestResultPage()),
    MenuItemModel(name: 'Каталог', icon: 'catalog', widget: Container()),
    MenuItemModel(name: 'Профили', icon: 'profile', widget: ProfilesPage()),
    MenuItemModel(name: 'Настройки', icon: 'settings2', widget: SettingsPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                AssetImage('assets/icons/back.png'),
                size: 16,
                color: Colors.black,
              ),
            ),
            Text('Nutrivisor', style: TextStyle(color: Colors.black)),
            SizedBox(width: 1,)
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/icons/settings1.png'),
                        size: 16,
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Color.fromRGBO(157, 169, 175, 1),
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 24,
                          child: Center(
                            child: Text('A'),
                          ),
                        ),
                      )),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Имя фамилия'),
                        Text('surname@gmail.com', style: TextStyle(color: Color.fromRGBO(103, 119, 126, 1)),),
                      ],)
                    ],
                  ),
                  ImageIcon(AssetImage('assets/icons/bottom_arrow.png'),
                    size: 16,
                    color: Color.fromRGBO(103, 119, 126, 1),),

                ],
              ),
              SizedBox(height: 33,),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: MenuItem.NotificationItem(
                  model: MenuItemModel(name: 'Напоминания', icon: 'notification', widget: NotificationPage()),),
              ),
              ...menuItems.map((e) => Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: MenuItem.MenuItem(model: e,),
              )).toList(),
              Spacer(),
              MenuItem.MenuItem(model: MenuItemModel(name: 'Обратная связь', icon: 'help', widget: Container()),),
              SizedBox(height: 24,),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Выход'),
                  ));
                },
                child: Row(children: [
                  ImageIcon(AssetImage('assets/icons/exit.png'), size: 16, color: Color.fromRGBO(173, 90, 31, 1),),
                  SizedBox(width: 16,),
                  Text('Выход', style: TextStyle(color: Color.fromRGBO(173, 90, 31, 1)),),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItemModel {
  String name;
  String icon;
  Widget widget;

  MenuItemModel({
    required this.name,
    required this.icon,
    required this.widget
  });

}