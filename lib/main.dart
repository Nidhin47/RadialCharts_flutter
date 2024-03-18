import 'package:flutter/material.dart';
import 'package:new_guage_test/radialChart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Gauge Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: RadialChartwidget(),
    );
  }
}
 