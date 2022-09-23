import 'package:flutter/material.dart';
import 'package:nutrivisor/nutri_widgets/cupertino_button.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 32, horizontal: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Пора принять',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('%Количество%Форма выпуска',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 24),
                          CircleAvatar(
                            backgroundColor: Color.fromRGBO(246, 248, 249, 1),
                            radius: 48,
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(height: 24),
                          Text('Название для %Профиль',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 24),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: double.infinity,
                              height: 42,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 172, 77, 0.08),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                  child: Text(
                                'Принято',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 172, 77, 1)),
                              )),
                            ),
                          ),
                          SizedBox(height: 24),
                          Text('Отложить', style: TextStyle(fontSize: 16)),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(246, 248, 249, 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                        child: Text(
                                      '5 мин.',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black),
                                    )),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(246, 248, 249, 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                        child: Text(
                                          '15 мин.',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(246, 248, 249, 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                        child: Text(
                                          '30 мин.',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(246, 248, 249, 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                        child: Text(
                                          '1 час',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                flex: 2,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(219, 69, 0, 0.08),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'Пропустить приём',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color.fromRGBO(219, 69, 0, 1)),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        child: Text('Получить уведомление'),
      ),
    ));
  }
}
