import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import '../test/fixture_data/counter_fixture_data.dart';
import 'performance_reporter.dart';

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
      PerformanceReporter performanceReporter = PerformanceReporter(
          reportTitle: 'tapping',
          destinationDirectory: 'test_driver/performance_logs/tapping');

      final Timeline timeline = await driver.traceAction(() async {
        await driver.tap(fabFinder);

        expect(await driver.getText(counterTextFinder),
            countAfterOneIncrementAsString);
      });

      performanceReporter.addTimeline(timeline);
      await performanceReporter.writeReports();
    });
  });
}
