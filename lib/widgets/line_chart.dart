import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

var data = [
  new TimeSeriesSales(new DateTime(2020, 9, 19), 5),
  new TimeSeriesSales(new DateTime(2020, 9, 26), 25),
  new TimeSeriesSales(new DateTime(2020, 10, 3), 100),
  new TimeSeriesSales(new DateTime(2020, 10, 10), 75),
];

var series = [
  new charts.Series<TimeSeriesSales, DateTime>(
    id: 'Sales',
    colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault,
    domainFn: (TimeSeriesSales sales, _) => sales.time,
    measureFn: (TimeSeriesSales sales, _) => sales.sales,
    data: data,
  )
];

var chart = charts.TimeSeriesChart(series,
    animate: true,
    domainAxis: new charts.DateTimeAxisSpec(
      renderSpec: charts.GridlineRendererSpec(
          labelStyle: new charts.TextStyleSpec(
            fontSize: 10,
            color: charts.MaterialPalette.white,
          ),
          lineStyle: charts.LineStyleSpec(
            thickness: 0,
            color: charts.MaterialPalette.transparent,
          )),
    ),
    primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
            labelStyle: charts.TextStyleSpec(
                fontSize: 10, color: charts.MaterialPalette.white),
            lineStyle: charts.LineStyleSpec(
                thickness: 0,
                color: charts.MaterialPalette.gray.shadeDefault))));

var chartWidget = SizedBox(
  height: 150.0,
  child: chart,
);

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
