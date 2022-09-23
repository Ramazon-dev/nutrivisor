import 'package:flutter/material.dart';
import 'package:nutrivisor/nutri_widgets/text_input.dart';

class ProgramItemEdit extends StatefulWidget {
  const ProgramItemEdit({Key? key}) : super(key: key);

  @override
  State<ProgramItemEdit> createState() => _ProgramItemEditState();
}

class _ProgramItemEditState extends State<ProgramItemEdit> {
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
              children: [
                Expanded(
                  flex: 30,
                  child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                    Text('Программа 1',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                    SizedBox(height: 24),
                    Text(
                      'Анна Петкович',
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(103, 119, 126, 1)),
                    ),
                    SizedBox(height: 32),
                    TextInput(labelText: 'Название'),
                    SizedBox(height: 32),
                    TextInput(labelText: 'Время', icon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('17:00'),
                        SizedBox(width: 8,),
                        ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                      ],),),
                    SizedBox(height: 32),
                    TextInput(labelText: 'Дата начала', icon:ImageIcon(AssetImage('assets/icons/calendar.png'), size: 16,),),
                    SizedBox(height: 32),
                    TextInput(labelText: 'Дата окончания', icon:ImageIcon(AssetImage('assets/icons/calendar.png'), size: 16,)),

                  ]),
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border:
                            Border.all(color: Color.fromRGBO(26, 129, 229, 0.5))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Копировать',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border:
                            Border.all(color: Color.fromRGBO(157, 169, 175, 1))),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'В архив',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
