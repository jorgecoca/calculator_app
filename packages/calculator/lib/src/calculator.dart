/// Tiny number calculator for just two numbers
class Calculator {
  double add(double a, double b) => a + b;

  double substract(double a, double b) => a - b;

  double multiply(double a, double b) => a * b;

  double divide(double a, double b) {
    if (b == 0) throw ArgumentError('You cannot divide by zero');
    return a / b;
  }

  Future<double> powerOfTwo(double a) =>
      Future.delayed(const Duration(seconds: 1), () => a * a);
}
