import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  group('add', () {
    test('the calculator returns 4 when adding 2 and 2', () {
      final calculator = Calculator();
      expect(calculator.add(2, 2), 4);
    });

    test('the calculator returns 40 when adding 20 and 20', () {
      final calculator = Calculator();
      expect(calculator.add(20, 20), 40);
    });
  });

  group('substract', () {
    test('the calculator returns 10 when substracting 10 to 20', () {
      final calculator = Calculator();
      expect(calculator.substract(20, 10), 10);
    });

    test('the calculator returns -4 when substracting 8 to 4', () {
      final calculator = Calculator();
      expect(calculator.substract(4, 8), -4);
    });
  });

  group('multiple', () {
    test('the calculator returns 45 when multiplying 5 tby 9', () {
      final calculator = Calculator();
      expect(calculator.multiply(5, 9), 45);
    });

    test('the calculator returns 18 when multiplying 25 tby 9', () {
      final calculator = Calculator();
      expect(calculator.multiply(2, 9), 18);
    });
  });

  group('divide', () {
    test('the calculator returns 9 when dividing 27 by 3', () {
      final calculator = Calculator();
      expect(calculator.divide(27, 3), 9);
    });

    test('the calculator returns 1 when dividing 27 by 27', () {
      final calculator = Calculator();
      expect(calculator.divide(27, 27), 1);
    });

    test('the calculator throws an ArgumentError when dividing by zero', () {
      final calculator = Calculator();
      expect(() => calculator.divide(27, 0), throwsArgumentError);
    });
  });
}
