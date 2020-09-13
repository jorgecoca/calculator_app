import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

class PowerOfTwo extends StatefulWidget {
  const PowerOfTwo({
    Key key,
    @required Calculator calculator,
  })  : assert(calculator != null),
        _calculator = calculator,
        super(key: key);

  final Calculator _calculator;

  @override
  State<StatefulWidget> createState() => _PowerOfTwoState();
}

class _PowerOfTwoState extends State<PowerOfTwo> {
  final _controller = TextEditingController();

  String _result;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_getResult);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          key: const Key('textField_powerOfTwo'),
          controller: _controller,
          keyboardType: TextInputType.number,
        ),
        Text(
          'to the power of two',
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          'is ${_result ?? '???'}',
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }

  void _getResult() async {
    try {
      final input = double.tryParse(_controller.text);
      final powerOfTwoResult = await widget._calculator.powerOfTwo(input);
      setState(() {
        _result = powerOfTwoResult.toString();
      });
    } catch (_) {
      setState(() {
        _result = null;
      });
    }
  }
}
