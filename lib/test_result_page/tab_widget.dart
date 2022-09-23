import 'package:flutter/material.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({Key? key}) : super(key: key);

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {

  int chosen = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
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
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                    'Таб 1',
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
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                        'Таб 2',
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
