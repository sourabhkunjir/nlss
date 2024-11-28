import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the chart
    final List<StudentReport> reportData = [
      StudentReport('Math', 85),
      StudentReport('Science', 78),
      StudentReport('English', 92),
      StudentReport('History', 88),
      StudentReport('Geography', 74),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Report Analysis"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SfCartesianChart(
          title: ChartTitle(text: 'Student Performance'),
          legend: Legend(isVisible: true),
          primaryXAxis: CategoryAxis(
            title: AxisTitle(text: 'Subjects'),
          ),
          primaryYAxis: NumericAxis(
            title: AxisTitle(text: 'Marks'),
            minimum: 0,
            maximum: 100,
            interval: 10,
          ),
          series: <ChartSeries<StudentReport, String>>[
            ColumnSeries<StudentReport, String>(
              dataSource: reportData,
              xValueMapper: (StudentReport data, _) => data.subject,
              yValueMapper: (StudentReport data, _) => data.marks,
              name: 'Marks',
              color: Colors.blue,
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}

// Model class for the report data
class StudentReport {
  final String subject;
  final int marks;

  StudentReport(this.subject, this.marks);
}
