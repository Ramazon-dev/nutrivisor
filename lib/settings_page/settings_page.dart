import 'package:flutter/material.dart';
import 'package:nutrivisor/settings_page/setting_item.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
          child: Column(
            children: [
              Expanded(
                flex: 30,
                child: ListView(physics: BouncingScrollPhysics(), children: [
                  Text('Настройки',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Отображать на главной'
                        '\nстранице события',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(103, 119, 126, 1)),
                      ),
                      Row(
                        children: [
                          Text('Все'),
                          SizedBox(width: 4),
                          ImageIcon(
                            AssetImage('assets/icons/down_arrow.png'),
                            size: 8,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Color.fromRGBO(217, 224, 227, 1),
                  ),
                  SettingItem(name: 'Напоминания'),
                  SizedBox(
                    height: 32,
                  ),
                  SettingItem(name: 'Звук уведомления'),
                  SizedBox(
                    height: 32,
                  ),
                  SettingItem(name: 'Вибрация'),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Выбрать мелодию',
                        style: TextStyle(fontSize: 16),
                      ),
                      ImageIcon(
                        AssetImage('assets/icons/cupertino_forward_arrow.png'),
                        size: 12,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SettingItem(name: 'Уведомлять по почте'),
                  SizedBox(
                    height: 32,
                  ),
                  SettingItem(name: 'Получать рассылки'),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Язык',
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text('Русский'),
                          SizedBox(width: 12),
                          ImageIcon(
                            AssetImage('assets/icons/down_arrow.png'),
                            size: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Divider(
                    thickness: 1,
                    color: Color.fromRGBO(217, 224, 227, 1),
                  ),
                ]),
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Color.fromRGBO(26, 129, 229, 0.5))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Экспорт\nНастроек',
                            ),
                            ImageIcon(
                              AssetImage('assets/icons/export.png'),
                              size: 16,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Color.fromRGBO(26, 129, 229, 0.5))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Импорт\nНастроек',
                            ),
                            ImageIcon(
                              AssetImage('assets/icons/import.png'),
                              size: 16,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
