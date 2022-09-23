import 'package:nutrivisor/program_info_page/program_model.dart';

class Program {
  final String programName;
  final String programTime;
  final String dateBegin;
  final String dateEnd;
  List<ProgramModel> drugs = [];

  Program({
    required this.programName,
    required this.programTime,
    required this.dateBegin,
    required this.dateEnd,
  });
}