import 'package:calculator/calculator.dart';
import 'package:calculator_app/operation.dart';
import 'package:calculator_app/two_digit_operation.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculator = Calculator();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                TwoDigitOperation(
                  calculator: calculator,
                  operation: Operation.add,
                ),
                Divider(),
                TwoDigitOperation(
                  calculator: calculator,
                  operation: Operation.substract,
                ),
                Divider(),
                TwoDigitOperation(
                  calculator: calculator,
                  operation: Operation.multiply,
                ),
                Divider(),
                TwoDigitOperation(
                  calculator: calculator,
                  operation: Operation.divide,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
