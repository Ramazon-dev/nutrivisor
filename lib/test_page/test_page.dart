import 'package:flutter/material.dart';
import 'package:nutrivisor/nutri_widgets/cupertino_button.dart';
import 'package:nutrivisor/test_page/test_answer.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
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
        child: ListView(

            children: [
              Text('Тест',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
              SizedBox(height: 24),
              TestAnswerWidget(),
              SizedBox(height: 32),
              TestAnswerWidget(),
              SizedBox(height: 32),
              TestAnswerWidget(),
              SizedBox(height: 24),

              Container(
                height: 42,
                child: CupertinoButton(children: [
                  Expanded(
                    child: Text(
                      'Далее',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  ImageIcon(
                    AssetImage('assets/icons/forward_arrow.png'),
                    color: Colors.white,
                    size: 16,
                  ),
                ]),
              ),
            ]),
      ),
    );
  }
}
