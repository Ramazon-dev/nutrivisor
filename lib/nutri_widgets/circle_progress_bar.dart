import 'package:flutter/material.dart';
import 'package:nutrivisor/const.dart';

class CircleProgressBar extends StatefulWidget {
  const CircleProgressBar({Key? key, required this.isPercent, required this.textValue, required this.value, required this.label}) : super(key: key);

  final String textValue;
  final double value;
  final String label;
  final bool isPercent;

  @override
  State<CircleProgressBar> createState() => _CircleProgressBarState();
}

class _CircleProgressBarState extends State<CircleProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(246, 248, 249, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color.fromRGBO(217, 224, 227, 1)),
                    color: Colors.black,
                    value: 1),
                TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: widget.value),
                  duration: const Duration(milliseconds: 3500),
                  builder: (context, value, _) => Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Color.fromRGBO(20, 184, 156, 1)),
                          color: Colors.black,
                          value: value),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: widget.isPercent ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Text(
                            widget.textValue,
                            style: TextStyle(
                                fontSize: 39,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                            Text('%',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),)
                            ],
                          ) : Text(
                            widget.textValue,
                            style: TextStyle(
                                fontSize: 39,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Text(
            widget.label,
            style: TextStyle(
                fontSize: 14,
                height: 1.4,
                color: Nutri.textHeaderColor,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
