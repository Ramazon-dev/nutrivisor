import 'package:flutter/material.dart';
import 'package:nutrivisor/index_page/index_page.dart';
import 'package:nutrivisor/model/AppModel.dart';
import 'package:nutrivisor/nutri_widgets/cupertino_button.dart';
import 'package:nutrivisor/nutri_widgets/text_input.dart';
import 'package:nutrivisor/program_edit_page/program_edit_page.dart';
import 'package:nutrivisor/program_info_page/PackProgram.dart';
import 'package:nutrivisor/program_info_page/program_model.dart';

class AddProgramPage extends StatefulWidget {
  AddProgramPage({Key? key, required this.program}) : super(key: key);

  final Program program;

  final TextEditingController programName = TextEditingController();
  final TextEditingController goodName = TextEditingController();
  final TextEditingController officialName = TextEditingController();
  final TextEditingController form = TextEditingController();
  final TextEditingController size = TextEditingController();
  final TextEditingController sizeInOn = TextEditingController();

  final TextEditingController frequency = TextEditingController();

  final TextEditingController quaInOne = TextEditingController();
  final TextEditingController period = TextEditingController();
  final TextEditingController dateOf = TextEditingController();
  final TextEditingController dateBegin = TextEditingController();
  final TextEditingController dateEnd = TextEditingController();
  final TextEditingController about = TextEditingController();

  @override
  State<AddProgramPage> createState() => _AddProgramPageState();
}

class _AddProgramPageState extends State<AddProgramPage> {
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
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Text('Основные',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              SizedBox(height: 32),
              TextInput(
                labelText: 'Программа',
                controller: widget.programName,
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Название'),
                    SizedBox(width: 8,),
                    ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                  ],),),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Профиль',
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Анна Петкович '),
                    SizedBox(width: 8,),
                    ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                  ],),),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Удобное название',
                  controller: widget.goodName
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Официальное название',
                  controller: widget.officialName
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Форма выпуска',
                  controller: widget.form
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Размер',
                  controller: widget.size
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Количество ед. в упаковке',
                  controller: widget.sizeInOn
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'У меня есть упаковок',

              ),
              SizedBox(height: 32),
              Text('Использование',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Кол-во раз в день',
                  controller: widget.frequency,
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Кол-во повторений в день',

              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Когда лучше принимать',
                controller: widget.period,
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Период '),
                    SizedBox(width: 8,),
                    ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                  ],),
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Кол-во для приема',
                controller: widget.sizeInOn,
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //Text('2'),
                    SizedBox(width: 8,),
                    ImageIcon(AssetImage('assets/icons/bottom_arrow.png'), size: 8,),
                  ],),
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Срок годности',
                  controller: widget.dateOf,
                icon: ImageIcon(AssetImage('assets/icons/calendar.png'), color: Color.fromRGBO(103, 119, 126, 1), size: 16),
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Дата начала использования',
                  controller: widget.dateBegin,
                icon: ImageIcon(AssetImage('assets/icons/calendar.png'), color: Color.fromRGBO(103, 119, 126, 1), size: 16),
              ),
              SizedBox(height: 24),
              TextInput(
                labelText: 'Дата окончания использования',
                  controller: widget.dateEnd,
                icon: ImageIcon(AssetImage('assets/icons/calendar.png'), color: Color.fromRGBO(103, 119, 126, 1), size: 16),
              ),
              SizedBox(height: 24,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(252, 182, 20, 0.08)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Сделать заметку', style: TextStyle(fontSize: 16,  color: Color.fromRGBO(141, 99, 2, 1),)),
                      TextField(maxLines: null, controller: widget.about),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24,),
              Container(
                height: 42,
                child: CupertinoButton(
                    onPressed: () {
                      widget.program.drugs.add(ProgramModel(programName: widget.programName.text,
                          goodDrugName: widget.goodName.text,
                          officialDrugName: widget.officialName.text,
                          form: widget.form.text,
                          size: widget.size.text,
                          inPackSize: widget.sizeInOn.text,
                          frequency: widget.frequency.text,
                          when: 'После еды',
                          quaForOne: widget.quaInOne.text,
                          dateOf: widget.dateOf.text,
                          beginDate: widget.dateBegin.text,
                          endDate: widget.dateEnd.text,
                          description: widget.about.text));
                      updateIndex.add(0);
                      programEditCtrl.add(0);
                    },
                    children: [
                  Expanded(
                    child: Text(
                      'Напомнить',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 24,),
              SizedBox(height: 24,),
            ],
          ),
        ));
  }
}
