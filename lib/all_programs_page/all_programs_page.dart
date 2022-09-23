import 'package:flutter/material.dart';
import 'package:nutrivisor/model/AppModel.dart';
import 'package:nutrivisor/nutri_widgets/program_widgets.dart';
import 'package:nutrivisor/program_info_page/PackProgram.dart';

import '../program_edit_page/program_edit_page.dart';

class AllProgramPage extends StatefulWidget {
  const AllProgramPage({Key? key}) : super(key: key);

  @override
  State<AllProgramPage> createState() => _AllProgramPageState();
}

class _AllProgramPageState extends State<AllProgramPage> {
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(children: [
          SizedBox(height: 16,),
          ...AppModel.programs.map((Program e) => Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProgramEditPage(program: e,)),
                    );
                  },
                  child: ProgramWidget(date: e.dateBegin, name: e.programName, percent: 0, state: 0,)),
              SizedBox(height: 12,)
            ],
          )),
        ],),
      ),
    );
  }
}
