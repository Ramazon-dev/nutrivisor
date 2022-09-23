import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutrivisor/const.dart';
import 'package:nutrivisor/nutri_widgets/bullet.dart';
import 'package:nutrivisor/nutri_widgets/bullet_item.dart';
import 'package:nutrivisor/nutri_widgets/cupertino_button.dart';

class TestEndPage extends StatelessWidget {
  const TestEndPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: SafeArea(
        child: Container(
          width: 42,
          height: 42,
          child: CupertinoButton(
            children: [
              Image(
                image: AssetImage('assets/icons/share.png'),
                color: Colors.white,
                width: 10,
                height: 10,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
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
        child: ListView(
          children: [
            Text('Результаты теста',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Nutri.textHeaderColor,
                    fontSize: 28)),
            SizedBox(height: 24),
            Row(
              children: [
                Text(
                  '29.09.2021',
                  style: TextStyle(color: Color.fromRGBO(103, 119, 126, 1)),
                ),
                SizedBox(
                  width: 12,
                ),
                BulletWidget(),
                SizedBox(width: 12),
                Text(
                  'Анна Петкович',
                  style: TextStyle(color: Color.fromRGBO(103, 119, 126, 1)),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Cимптомы',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Nutri.textHeaderColor),
            ),
            SizedBox(height: 16),
            BulletItem(
                text:
                    'There are many variations of passages of Lorem Ipsum available.'),
            SizedBox(height: 12),
            BulletItem(
                text:
                    'But the majority have suffered alteration in some form.'),
            SizedBox(height: 12),
            BulletItem(text: 'By injected humour.'),
            SizedBox(height: 12),
            BulletItem(
                text:
                    'Or randomised words which don\'t look even slightly believable.'),
            SizedBox(
              height: 32,
            ),
            Text(
              'Корректирующие элементы',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Nutri.textHeaderColor),
            ),
            SizedBox(height: 16),
            BulletItem(text: 'Contrary to popular'),
            SizedBox(
              height: 12,
            ),
            BulletItem(text: 'Belief'),
            SizedBox(
              height: 12,
            ),
            BulletItem(text: 'Lorem Ipsum is not simply random text'),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
