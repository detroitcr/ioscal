import 'package:flutter/material.dart';
import 'package:test/cal_row.dart.dart';
import 'package:test/zero_row.dart';

class CalButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // show the numbers of row
      children: [
        CalculatorRow(
          key1: 'AC',
          key2: '+/-',
          key3: '%',
          key4: 'X',
          bgColor: Colors.grey,
          textColor: Colors.black,
        ),
        CalculatorRow(
          key1: '7',
          key2: '8',
          key3: '9',
          key4: '/',
          bgColor: Colors.grey.shade800,
        ),
        CalculatorRow(
          key1: '6',
          key2: '5',
          key3: '4',
          key4: '-',
          bgColor: Colors.grey.shade800,
        ),
        CalculatorRow(
          key1: '3',
          key2: '2',
          key3: '1',
          key4: '+',
          bgColor: Colors.grey.shade800,
        ),
        ZeroRow(
          key1: '0',
          key2: '.',
          key3: '=',
          bgColor: Colors.grey.shade800,
        ),
        // we create another widget for zero padding
      ],
    );
  }
}
