enum Operation {
  add,
  substract,
  multiply,
  divide,
}

extension OperationX on Operation {
  String get description {
    switch (this) {
      case Operation.add:
        return 'plus';
      case Operation.substract:
        return 'minus';
      case Operation.multiply:
        return 'multiplied by';
      case Operation.divide:
      default:
        return 'divided by';
    }
  }
}
