import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  FlutterDriver driver;

  setUpAll(() async {
    driver = await FlutterDriver.connect();
  });

  tearDownAll(() {
    driver?.close();
  });

  test('the values of pi are 3.0, 3.1, 3.14, 3.141 and 3.1415', () async {
    await driver.waitFor(find.text('Calculating pi...'));
    await driver.waitFor(find.text('The latest known value of pi is 3.0'));
    await driver.waitFor(find.text('The latest known value of pi is 3.1'));
    await driver.waitFor(find.text('The latest known value of pi is 3.14'));
    await driver.waitFor(find.text('The latest known value of pi is 3.141'));
    await driver.waitFor(find.text('The latest known value of pi is 3.1415'));
  });

  test('multiplying 5 and 10 shows 50', () async {
    await driver.tap(find.byValueKey('textField_top_multiplied by'));
    await driver.enterText('5');
    await driver.tap(find.byValueKey('textField_bottom_multiplied by'));
    await driver.enterText('10');
    await driver.waitFor(find.text('is 50.0'));
  });
}
