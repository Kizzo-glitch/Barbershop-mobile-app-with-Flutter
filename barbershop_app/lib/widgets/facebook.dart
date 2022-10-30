import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Statistic extends StatefulWidget {
  @override
  _StatisticState createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Task, String>> _seriesBarData;

  _generateData() {
    var chartData = [
      Task('Mon', 250, Colors.blue),
      Task('Tue', 150, Colors.red),
      Task('Wed', 355, Colors.purple),
      Task('Thu', 300, Colors.orange[700]),
      Task('Fri', 400, Colors.green),
      Task('Sat', 360, Colors.amber),
    ];
    _seriesPieData.add(charts.Series(data: chartData, domainFn: (Task week, _) => week.week, measureFn: (Task week, _) => week.weekValue, colorFn: (Task week, _) => charts.ColorUtil.fromDartColor(week.colorVal), id: 'Weekly Revenue', labelAccessorFn: (Task row, _) => '${row.weekValue}'));

    _seriesBarData.add(charts.Series(data: chartData, domainFn: (Task week, _) => week.week, measureFn: (Task week, _) => week.weekValue, colorFn: (Task week, _) => charts.ColorUtil.fromDartColor(week.colorVal), id: 'Weekly Revenue', labelAccessorFn: (Task row, _) => '${row.weekValue}'));
  }

  @override
  void initState() {
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesBarData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                bottom: TabBar(indicatorColor: Colors.grey, tabs: [
                  Tab(icon: Icon(FontAwesomeIcons.solidChartBar)),
                  Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                  //Tab(icon: Icon(Icons.payment))
                ]),
                title: Text('My Revenues')),
            body: TabBarView(children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Bar Chart of weekly yearnings',
                          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: charts.BarChart(
                            _seriesBarData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            behaviors: [
                              new charts.SeriesLegend()
                            ],
                            animationDuration: Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                      child: Center(
                          child: Column(children: <Widget>[
                    Text(
                      'Revenue made on a weekly basis',
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                      child: charts.PieChart(_seriesPieData,
                          animate: true,
                          animationDuration: Duration(seconds: 5),
                          behaviors: [
                            new charts.DatumLegend(
                              outsideJustification: charts.OutsideJustification.endDrawArea,
                              horizontalFirst: false,
                              desiredMaxRows: 2,
                              cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                              entryTextStyle: charts.TextStyleSpec(
                                  color: charts.MaterialPalette.purple.shadeDefault,
                                  //fontFamily: 'Georgia',
                                  fontSize: 11),
                            )
                          ],
                          defaultRenderer: new charts.ArcRendererConfig(arcWidth: 100, arcRendererDecorators: [
                            new charts.ArcLabelDecorator(labelPosition: charts.ArcLabelPosition.inside)
                          ])),
                    )
                  ])))),
            ])));
  }
}

class Task {
  String week;
  double weekValue;
  Color colorVal;

  Task(this.week, this.weekValue, this.colorVal);
}