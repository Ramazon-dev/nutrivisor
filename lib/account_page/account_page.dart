import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrivisor/account_page/gender_choose.dart';
import 'package:nutrivisor/nutri_widgets/text_input.dart';
import 'package:nutrivisor/settings_page/setting_item.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

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
            child: ListView(physics: BouncingScrollPhysics(), children: [
              Text('Аккаунт',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
              SizedBox(height: 32),
              Row(
                children: [
                  Expanded(child: TextInput(labelText: 'Имя')),
                  SizedBox(width: 12),
                  Expanded(child: TextInput(labelText: 'Отчество')),
                ],
              ),
              SizedBox(height: 14),
              TextInput(labelText: 'Фамилия'),
              SizedBox(height: 14),
              TextInput(labelText: 'Дата рождения', icon: ImageIcon(AssetImage('assets/icons/calendar.png'), color: Color.fromRGBO(103, 119, 126, 1), size: 16),),
              SizedBox(height: 32,),
              Text('Пол', style: const TextStyle(color: Color.fromRGBO(103, 119, 126, 1), fontSize: 16),),
              SizedBox(height: 12),
              GenderChoose(),
              SizedBox(height: 36),
              TextInput(labelText: 'Страна', icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text('Россия'),
                SizedBox(width: 8,),
                ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
              ],),),
              SizedBox(height: 14),
              TextInput(labelText: 'Город', icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Санкт-Петербург'),
                  SizedBox(width: 8,),
                  ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                ],),),
              SizedBox(height: 14),
              Row(
                children: [
                  Expanded(child: TextInput(labelText: 'Рост')),
                  SizedBox(width: 12),
                  Expanded(child: TextInput(labelText: 'Вес')),
                ],
              ),
              SizedBox(height: 14),
              TextInput(labelText: 'Телосложение', icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Худая'),
                  SizedBox(width: 8,),
                  ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                ],),),
              SizedBox(height: 14),
              TextInput(labelText: 'Физ. наргрузка', icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Средняя'),
                  SizedBox(width: 8,),
                  ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                ],),),
              SizedBox(height: 32),
              SettingItem(name: 'Отслеживать цикл'),
              SizedBox(height: 10),
              TextInput(labelText: 'Прод. цикла', icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('29 дней'),
                  SizedBox(width: 8,),
                  ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                ],),),
              SizedBox(height: 14),
              TextInput(labelText: 'Прод. менструаций', icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('7 дней'),
                  SizedBox(width: 8,),
                  ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                ],),),
              SizedBox(height: 14),
              TextInput(labelText: 'Лютеальная фаза', icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('3 дня'),
                  SizedBox(width: 8,),
                  ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                ],),),
            ])));
  }
}
