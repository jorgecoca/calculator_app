import 'package:calculator_app/home_page.dart';
import 'package:calculator_app/inherited_widgets/inherited_widgets.dart';
import 'package:flutter/material.dart';
import 'package:calculator/calculator.dart';

void main() async {
  runApp(
    CalculatorApp(
      calculator: Calculator(),
    ),
  );
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({
    Key key,
    @required this.calculator,
  })  : assert(calculator != null),
        super(key: key);

  final Calculator calculator;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: InheritedCalculator(
        calculator: calculator,
        child: HomePage(),
      ),
    );
  }
}
