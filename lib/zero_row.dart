import 'package:flutter/material.dart';

class ZeroRow extends StatelessWidget {
  // we only require three 0,.,=
  final String key1;
  final String key2;
  final String key3;
  final Color bgColor;
  final Color textColor;
  ZeroRow(
      {Key? key,
      required this.key1,
      required this.key2,
      required this.key3,
      this.textColor = Colors.white,
      this.bgColor = Colors.black12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: textColor, fontSize: 30);
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(6),
              child: Text(
                key1,
                style: style,
              ),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(40),
              ),
              height: double.maxFinite,
              width: double.maxFinite,
            ),
          ),
          Expanded(
            child: Row(
              children: [
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
                    backgroundColor: Colors.orange,
                    child: Text(
                      key3,
                      style: style,
                    ),
                    radius: 40,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
