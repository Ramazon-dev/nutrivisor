import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrivisor/program_info_page/program_el_page.dart';
import 'package:nutrivisor/program_info_page/program_model.dart';

class ProgramItem extends StatefulWidget {
  const ProgramItem({Key? key,
  required  this.name,
    required this.description,
    required this.next,
    required this.income,
    required this.drug,
  }) : super(key: key);

  final String name;
  final String description;
  final String next;
  final String income;
  final ProgramModel drug;

  @override
  State<ProgramItem> createState() => _ProgramItemState();
}

class _ProgramItemState extends State<ProgramItem> {

  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProgramElPage(program: widget.drug,)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(246, 248, 249, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1), spreadRadius: 0.1)],

                        ),
                        child: CircleAvatar(radius: 24, backgroundColor: Colors.white,)),
                    SizedBox(width: 12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(widget.name, style: TextStyle(fontSize: 16, color: Color.fromRGBO(43, 51, 59, 1))),
                      SizedBox(height: 4),
                      Text(widget.description, style: TextStyle(fontSize: 12, color: Color.fromRGBO(43, 51, 59, 0.5)),)
                    ],),
                  ],
                ),
                CupertinoSwitch(value: isEnabled, onChanged: (value) {
                  setState((){
                    isEnabled = value;
                  });
                }),
              ],),
              SizedBox(height: 10),
              Divider(
                thickness: 1,
                color: Color.fromRGBO(217, 224, 227, 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text('След. использ.', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Color.fromRGBO(43, 51, 59, 0.5)),),
                      SizedBox(height: 4,),
                      Text(widget.next, textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Color.fromRGBO(43, 51, 59, 1))),
                      SizedBox(height: 4),
                    ],),
                  ),
                  Container(
                    width: 1,
                    height: 32,
                    color:  Color.fromRGBO(217, 224, 227, 1),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Прием', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Color.fromRGBO(43, 51, 59, 0.5)),),
                        SizedBox(height: 4,),
                        Text(widget.income, textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Color.fromRGBO(43, 51, 59, 1))),
                        SizedBox(height: 4),
                      ],),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Color.fromRGBO(217, 224, 227, 1),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Color.fromRGBO(26, 129, 229, 0.5))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Center(
                          child: Text(
                            'Копировать',
                            style: TextStyle(fontSize: 16,),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(219, 69, 0, 0.12),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: ImageIcon(AssetImage('assets/icons/bin.png'), size: 10, color: Color.fromRGBO(219, 69, 0, 1),)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
