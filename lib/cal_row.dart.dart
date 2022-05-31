import 'package:flutter/material.dart';

class CalculatorRow extends StatelessWidget {
  final String key1;
  final String key2;
  final String key3;
  final String key4;
  final Color bgColor;
  final Color textColor;
  CalculatorRow({
    Key? key,
    required this.key1,
    required this.key2,
    required this.key3,
    required this.key4,
    this.bgColor = Colors.black12,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: textColor,
      fontSize: 30,
    );
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          // AC button
          Expanded(
            child: CircleAvatar(
              backgroundColor: bgColor,
              child: Text(
                key1,
                style: style,
              ),
              radius: 40,
            ),
          ),
          Expanded(
            child: CircleAvatar(
              backgroundColor: bgColor,
              child: Text(
                key2,
                style: style,
              ),
              radius: 40,
            ),
          ),
          Expanded(
            child: CircleAvatar(
              backgroundColor: bgColor,
              child: Text(
                key3,
                style: style,
              ),
              radius: 40,
            ),
          ),
          Expanded(
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                key4,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              radius: 40,
            ),
          ),
        ],
      ),
    );
  }
}
