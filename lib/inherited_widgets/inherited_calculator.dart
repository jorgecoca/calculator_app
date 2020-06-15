import 'package:flutter/widgets.dart';
import 'package:calculator/calculator.dart';

class InheritedCalculator extends InheritedWidget {
  const InheritedCalculator({
    Key key,
    @required this.calculator,
    @required Widget child,
  })  : assert(calculator != null),
        assert(child != null),
        super(key: key, child: child);

  final Calculator calculator;

  static InheritedCalculator of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCalculator>();
  }

  @override
  bool updateShouldNotify(InheritedCalculator old) =>
      calculator != old.calculator;
}
