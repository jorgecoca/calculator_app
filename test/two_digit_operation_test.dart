import 'package:calculator/calculator.dart';
import 'package:calculator_app/operation.dart';
import 'package:calculator_app/two_digit_operation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Calculator calculator;

  setUp(() {
    calculator = Calculator();
  });

  group('TwoDigitOperation', () {
    group('Operation.add', () {
      testWidgets('paints 4.0 when adding 3 and 1', (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: TwoDigitOperation(
                operation: Operation.add,
                calculator: calculator,
              ),
            ),
          ),
        );
        await tester.enterText(
          find.byKey(const Key('textField_top_plus')),
          '3',
        );
        await tester.enterText(
          find.byKey(const Key('textField_bottom_plus')),
          '1',
        );
        await tester.pumpAndSettle();
        expect(find.text('is 4.0'), findsOneWidget);
      });
    });
  });
}
