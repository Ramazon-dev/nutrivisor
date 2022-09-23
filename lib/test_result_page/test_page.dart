import 'package:flutter/material.dart';
import 'package:nutrivisor/nutri_widgets/cupertino_button.dart';
import 'package:nutrivisor/test_result_page/tab_widget.dart';
import 'package:nutrivisor/test_result_page/test_result.dart';

class TestResultPage extends StatefulWidget {
  const TestResultPage({Key? key}) : super(key: key);

  @override
  State<TestResultPage> createState() => _TestResultPageState();
}

class _TestResultPageState extends State<TestResultPage> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Тесты',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            SizedBox(height: 24),
            TabWidget(),
            SizedBox(height: 24),
            Container(
              height: 42,
              width: double.infinity,
              child: CupertinoButton(children: [
                Expanded(
                  child: Text(
                    'Начать тестирование',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                ImageIcon(
                  AssetImage('assets/icons/forward_arrow.png'),
                  color: Colors.white,
                  size: 16,
                )
              ]),
            ),
            SizedBox(height: 32),
            Text('Результаты тестирования',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
            SizedBox(height: 12),
            TestResultWidget(text: 'Тест 1', date: '29.11.2021'),
            SizedBox(height: 12),
            TestResultWidget(text: 'Тест 2', date: '30.11.2021'),

          ],
        ),
      ),
    );
  }
}
