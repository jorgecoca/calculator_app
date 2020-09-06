import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  Calculator calculator;

  setUp(() {
    calculator = Calculator();
  });

  group('Calculator', () {
    group('add', () {
      test('returns 4 when adding 2 and 2', () {
        expect(calculator.add(2, 2), 4);
      });

      test('returns 40 when adding 20 and 20', () {
        expect(calculator.add(20, 20), 40);
      });
    });

    group('substract', () {
      test('returns 10 when substracting 10 to 20', () {
        expect(calculator.substract(20, 10), 10);
      });

      test('returns -4 when substracting 8 to 4', () {
        expect(calculator.substract(4, 8), -4);
      });
    });

    group('multiple', () {
      test('returns 45 when multiplying 5 tby 9', () {
        expect(calculator.multiply(5, 9), 45);
      });

      test('returns 18 when multiplying 25 tby 9', () {
        expect(calculator.multiply(2, 9), 18);
      });
    });

    group('divide', () {
      test('returns 9 when dividing 27 by 3', () {
        expect(calculator.divide(27, 3), 9);
      });

      test('returns 1 when dividing 27 by 27', () {
        expect(calculator.divide(27, 27), 1);
      });

      test('throws an ArgumentError when dividing by zero', () {
        expect(() => calculator.divide(27, 0), throwsArgumentError);
      });
    });

    group('powerOfTwo', () {
      test('returns 81 when the input is 9', () async {
        expect(await calculator.powerOfTwo(9), 81);
      });
    });

    group('pi', () {
      test('emits [3, 3.1, 3.14, 3.141, 3.1415] in that order', () {
        expect(
          calculator.pi(),
          emitsInOrder([3, 3.1, 3.14, 3.141, 3.1415]),
        );
      });
    });
  });
}
