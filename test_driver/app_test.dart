import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import '../test/fixture_data/counter_fixture_data.dart';

void main() {
  group('Increment integration test', () {
    final SerializableFinder counterTextFinder =
        find.byValueKey('counter_text');
    final SerializableFinder fabFinder = find.byValueKey('increment_fab');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    bool driverIsNotNull() => driver != null;

    tearDownAll(() async {
      if (driverIsNotNull()) await driver.close();
    });

    test('Starts at 0', () async {
      expect(await driver.getText(counterTextFinder), initialCountAsString);
    });

    test('Increments the counter', () async {
      await driver.tap(fabFinder);

      expect(await driver.getText(counterTextFinder),
          countAfterOneIncrementAsString);
    });
  });
}
