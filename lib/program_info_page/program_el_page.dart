import 'package:flutter/material.dart';
import 'package:nutrivisor/program_info_page/info_item.dart';
import 'package:nutrivisor/program_info_page/program_model.dart';

class ProgramElPage extends StatefulWidget {
  const ProgramElPage({Key? key, required this.program}) : super(key: key);

  final ProgramModel program;

  @override
  State<ProgramElPage> createState() => _ProgramElPageState();
}

class _ProgramElPageState extends State<ProgramElPage> {
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
            child: ListView(
                clipBehavior: Clip.none,
                physics: BouncingScrollPhysics(), children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Color.fromRGBO(246, 248, 249, 1), radius: 32.5,),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${widget.program.officialDrugName}',
                              style:
                                  TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text('${widget.program.programName}',
                                  style:
                                  TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
                              SizedBox(width: 12,),
                              Text('Активна',
                                  style:
                                    TextStyle(fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(43, 51, 59, 0.5),
                                        fontSize: 12)),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                  ImageIcon(
                    AssetImage('assets/icons/settings1.png'),
                    size: 12,
                  ),
                ],
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
                  Text('29.09-11.10',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(43, 51, 59, 0.5),
                          fontSize: 16)),
                ],
              ),
              SizedBox(height: 32),
              Text('Заголовок',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(height: 16),
              InfoItem(name: 'Вещество', description: '${widget.program.goodDrugName}'),
              SizedBox(height: 12),
              InfoItem(name: 'Форма выпуска', description: '${widget.program.form}'),
              SizedBox(height: 12),
              InfoItem(name: 'Дозировка', description: '${widget.program.size}'),
              SizedBox(height: 12),
              InfoItem(name: 'Кол-во ед. в упаковке', description: '${widget.program.inPackSize}'),
              SizedBox(height: 12),
              InfoItem(name: 'Частота использования', description: '${widget.program.frequency} раз(a) / день'),
              SizedBox(height: 12),
              InfoItem(name: 'Лучше принимать', description: '${widget.program.when}'),
              SizedBox(height: 12),
              InfoItem(name: 'Кол-во для приема', description: '${widget.program.quaForOne}'),
              SizedBox(height: 12),
              InfoItem(name: 'Срок годности', description: '${widget.program.dateOf}'),
              SizedBox(height: 12),
              InfoItem(name: 'Дата начала исп.', description: '${widget.program.beginDate}'),
              SizedBox(height: 12),
              InfoItem(name: 'Дата окончания исп.', description: '${widget.program.endDate}'),
              SizedBox(height: 12),
              InfoItem(name: 'Дата и время\nследующего\nиспользования.', description: '30.10.2021 в 13:30'),
              SizedBox(height: 12),
              InfoItem(name: 'Процент исп.', description: '70%'),
              SizedBox(height: 48),
              Text('Примечание',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(height: 12),
              Text('${widget.program.description}',
                  style:
                  TextStyle(fontSize: 16)),
              SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('История\nиспользования',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Container(
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:
                        Border.all(color: Color.fromRGBO(26, 129, 229, 0.5))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                      child: Text(
                        'Отправить отчёт',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )


            ])));
  }
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 5.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color.withOpacity(0.18)),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

