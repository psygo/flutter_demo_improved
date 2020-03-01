import 'package:meta/meta.dart';
import 'package:flutter_driver/flutter_driver.dart';

class PerformanceReporter {
  static const String defaultPerformanceDir = 'build';

  final String _destinationDirectory;
  final String _reportTitle;
  final List<Timeline> _timelines = [];

  PerformanceReporter({
    @required reportTitle,
    String destinationDirectory,
  })  : _reportTitle = reportTitle,
        _destinationDirectory = destinationDirectory ?? defaultPerformanceDir;

  String get reportTitle => _reportTitle;
  String get destinationDirectory => _destinationDirectory;
  List<Timeline> get timelines => _timelines;

  void addTimeline(Timeline timeline) => _timelines.add(timeline);

  Future<void> writeReports({
    bool pretty = true,
  }) async {
    int timelineIndex = 0;

    await Future.forEach(_timelines, (Timeline timeline) async {
      final TimelineSummary summary = TimelineSummary.summarize(timeline);

      final String timelineSummaryFilename =
              '${_reportTitle}_${timelineIndex}_summary',
          timelineTimelineFilename =
              '${_reportTitle}_${timelineIndex}_timeline';

      await summary.writeSummaryToFile(timelineSummaryFilename,
          destinationDirectory: _destinationDirectory, pretty: pretty);
      await summary.writeTimelineToFile(timelineTimelineFilename,
          destinationDirectory: _destinationDirectory, pretty: pretty);

      timelineIndex++;
    });
  }
}
