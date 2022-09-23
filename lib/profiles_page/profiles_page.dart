import 'package:flutter/material.dart';
import 'package:nutrivisor/nutri_widgets/cupertino_button.dart';
import 'package:nutrivisor/nutri_widgets/my_text.dart';
import 'package:nutrivisor/profiles_page/profile_model.dart';
import 'package:nutrivisor/profiles_page/profile_view.dart';

class ProfilesPage extends StatefulWidget {
  const ProfilesPage({Key? key}) : super(key: key);

  @override
  State<ProfilesPage> createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
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
                child: Text('A'),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text('Профили',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            SizedBox(height: 32),
            MyText(text: 'Мой аккаунт'),
            SizedBox(height: 12,),
            ProfileView(profile: Profile(pic: 'ВФ', name: 'Васиий Фамилия', email: 'surname@gmail.com', age: '30 лет'),),
            SizedBox(height: 28),
            MyText(text: 'Другие профили'),
            SizedBox(height: 16),
            ProfileView(profile: Profile(pic: 'ИФ', name: 'Имя Фамилия', email: 'surname@gmail.com', age: '21 год'),),
            SizedBox(height: 16),
            ProfileView(profile: Profile(pic: 'ИФ', name: 'Имя Фамилия', email: 'surname@gmail.com', age: '67 лет'),),
            SizedBox(height: 16),
            ProfileView(profile: Profile(pic: 'ИФ', name: 'Имя Фамилия', email: 'surname@gmail.com', age: '17 лет'),),
            Spacer(),
            CupertinoButton(children: [Expanded(child: Center(child: Text('Title', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)))])
          ],
        ),
      ),
    );
  }
}
