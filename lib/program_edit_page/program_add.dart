import 'package:flutter/material.dart';
import 'package:nutrivisor/index_page/index_page.dart';
import 'package:nutrivisor/model/AppModel.dart';
import 'package:nutrivisor/nutri_widgets/text_input.dart';
import 'package:nutrivisor/program_info_page/PackProgram.dart';

class ProgramAddPage extends StatefulWidget {
  ProgramAddPage({Key? key}) : super(key: key);

  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController timeCtrl = TextEditingController();
  final TextEditingController dateBegin = TextEditingController();
  final TextEditingController dateEnd = TextEditingController();

  @override
  State<ProgramAddPage> createState() => _ProgramAddPageState();
}

class _ProgramAddPageState extends State<ProgramAddPage> {

  @override
  void initState() {
    widget.nameCtrl.addListener(() {
      setState(() {});
    });
    super.initState();
  }

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
                  child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        Text('${widget.nameCtrl.text.length == 0
                            ? 'Начните вводить название...'
                            : widget.nameCtrl.text}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28)),
                        SizedBox(height: 24),
                        Text(
                          'Анна Петкович',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(103, 119, 126, 1)),
                        ),
                        SizedBox(height: 32),
                        TextInput(
                          labelText: 'Название', controller: widget.nameCtrl,),
                        SizedBox(height: 32),
                        TextInput(labelText: 'Время',
                          controller: widget.timeCtrl,
                          icon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('17:00'),
                            SizedBox(width: 8,),
                            ImageIcon(
                              AssetImage('assets/icons/bottom_arrow.png'),
                              size: 8,),
                          ],),),
                        SizedBox(height: 32),
                        TextInput(labelText: 'Дата начала',
                          controller: widget.dateBegin,
                          icon: ImageIcon(
                            AssetImage('assets/icons/calendar.png'),
                            size: 16,),),
                        SizedBox(height: 32),
                        TextInput(labelText: 'Дата окончания',
                            controller: widget.dateEnd,
                            icon: ImageIcon(
                              AssetImage('assets/icons/calendar.png'),
                              size: 16,)),

                      ]),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    AppModel.programs.add(Program(programName: widget.nameCtrl.text, programTime: widget.timeCtrl.text, dateEnd: widget.dateEnd.text, dateBegin: widget.dateBegin.text,
                    ));
                    updateIndex.add(0);
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                              Border.all(
                                  color: Color.fromRGBO(26, 129, 229, 0.5))),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Добавить',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
