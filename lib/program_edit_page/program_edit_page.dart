import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nutrivisor/add_program_page/add_program_page.dart';
import 'package:nutrivisor/nutri_widgets/cupertino_button.dart';
import 'package:nutrivisor/program_edit_page/program_item.dart';
import 'package:nutrivisor/program_info_page/PackProgram.dart';
import 'package:nutrivisor/program_info_page/program_el_page.dart';
import 'package:nutrivisor/program_item_edit/program_item_edit.dart';

StreamController<int> programEditCtrl = StreamController<int>.broadcast();

class ProgramEditPage extends StatefulWidget {
  const ProgramEditPage({Key? key, required this.program}) : super(key: key);

  final Program program;

  @override
  State<ProgramEditPage> createState() => _ProgramEditPageState();
}

class _ProgramEditPageState extends State<ProgramEditPage> {

  @override
  void initState() {
    super.initState();
    programEditCtrl.stream.listen((event) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
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
            child: ListView(physics: BouncingScrollPhysics(), children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${widget.program.programName}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                  ImageIcon(
                    AssetImage('assets/icons/settings1.png'),
                    size: 12,
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                'Активна',
                style: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(43, 51, 59, 0.5)),
              ),
              SizedBox(height: 24),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: Color.fromRGBO(246, 248, 249, 1),
                  minHeight: 8,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromRGBO(20, 184, 156, 1)),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('31%',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('${widget.program.dateBegin}-${widget.program.dateEnd}',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(43, 51, 59, 0.5),
                          fontSize: 16)),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              ...widget.program.drugs.map((e) {
                return Column(
                  children: [
                    ProgramItem(
                      drug: e,
                      description: e.description, name: e.programName, next: e.dateOf, income: e.frequency,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddProgramPage(program: widget.program,)),
                  );
                },
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border:
                          Border.all(color: Color.fromRGBO(26, 129, 229, 0.5))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Добавить содержимое',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 42,
                child: CupertinoButton(children: [
                  Expanded(
                    child: Text(
                      'Отправить отчет',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
              ),
            ])));
  }
}
