import 'package:flutter/material.dart';

class GenderChoose extends StatefulWidget {
  const GenderChoose({Key? key}) : super(key: key);

  @override
  State<GenderChoose> createState() => _GenderChooseState();
}

class _GenderChooseState extends State<GenderChoose> {

  int chosen = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color.fromRGBO(246, 248, 249, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    chosen = 0;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: chosen == 0
                        ? Colors.white
                        : Color.fromRGBO(246, 248, 249, 1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                      child: Text(
                        'Женский',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: chosen == 0
                                ? Colors.black
                                : Color.fromRGBO(157, 169, 175, 1)),
                      )),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    chosen = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: chosen == 1
                        ? Colors.white
                        : Color.fromRGBO(246, 248, 249, 1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                      child: Text(
                        'Мужской',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: chosen == 1
                                ? Colors.black
                                : Color.fromRGBO(157, 169, 175, 1)),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
