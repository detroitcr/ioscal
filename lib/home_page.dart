import 'package:flutter/material.dart';
import 'package:test/cal_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String result = '0';
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // result part of calculator
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                result,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 80,
                  color: Colors.white,
                ),
              ),
            ),
            // numeric pads of calculator
            CalButton(),
          ],
        ),
      ),
    );
  }
}
