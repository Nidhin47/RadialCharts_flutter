import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RadialChartwidget extends StatefulWidget {
  const RadialChartwidget({Key? key}) : super(key: key);

  @override
  _RadialChartWidgetState createState() => _RadialChartWidgetState();
} 

class _RadialChartWidgetState extends State<RadialChartwidget> {
  List<RadialData> chartData = [
    RadialData(9000, 'Energy'),
    RadialData(9000, 'Water'),
    RadialData(15000, 'Solar'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gauges'),
      ),
      body: Container(
        height: 300,
        margin: const EdgeInsets.all(10),
        child: SfCircularChart(
          //backgroundColor: Colors.black,
          title: ChartTitle(text: 'Usage Data'),
          legend: Legend(isVisible: true),
          palette: [Colors.red, Colors.green, Colors.blue],
          series: [
            RadialBarSeries<RadialData, String>(
              radius: '90%',
              innerRadius: '40%',
              trackColor: Colors.grey.shade800,
              gap: '3%',
              dataSource: chartData,
              cornerStyle: CornerStyle.bothCurve,
              xValueMapper: (RadialData data, _) => data.xData,
              yValueMapper: (RadialData data, _) => data.yData,
              )
          ],
        )),
    );
  }
}

class RadialData {
  final num yData;
  final String xData;

  RadialData(this.yData, this.xData);
}