import 'package:calculator_app/main.dart';
import 'package:calculator_app/two_digit_operation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CalculatorApp', () {
    testWidgets('renders four widgets of type TwoDigitOperation',
        (WidgetTester tester) async {
      await tester.pumpWidget(CalculatorApp());
      expect(find.byType(TwoDigitOperation), findsNWidgets(4));
    });
  });
}
