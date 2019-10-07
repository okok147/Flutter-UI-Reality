import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TomLineChartSample2 extends StatefulWidget {
  @override
  _TomLineChartSample2State createState() => _TomLineChartSample2State();
}

class _TomLineChartSample2State extends State<TomLineChartSample2> {
  List<Color> gradientColors = [
    Color(0xff3535DD).withOpacity(1),
    Color(0xff3535DD).withOpacity(0.95),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.9,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.0),
              borderRadius: const BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 8.0, left: 8.0, top: 32, bottom: 0),
              child: FlChart(
                chart: LineChart(
                  showAvg ? avgData() : mainData(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawHorizontalGrid: false,
        getDrawingVerticalGridLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 10,
          );
        },
        getDrawingHorizontalGridLine: (value) {
          return const FlLine(
            color: Colors.black,
            strokeWidth: 10,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: false,
        leftTitles: SideTitles(
          showTitles: false,
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          reservedSize: 15,
          margin: 0,
        ),
      ),
      borderData: FlBorderData(
          show: false, border: Border.all(color: Colors.black, width: 1)),
      minX: 0,
      maxX: 12,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 0.7),
            FlSpot(1.2, 1.6),
            FlSpot(2.6, 3),
            FlSpot(5, 3.5),
            FlSpot(6.9, 5),
            FlSpot(8.7, 5.5),
            FlSpot(9.0, 5.6),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 3.5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BelowBarData(
            show: true,
            colors: gradientColors
                .map((color) => color.withOpacity(0.012))
                .toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: false,
        drawHorizontalGrid: false,
        getDrawingVerticalGridLine: (value) {
          return const FlLine(
            color: Colors.black,
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalGridLine: (value) {
          return const FlLine(
            color: Colors.black,
            strokeWidth: 1,
          );
        },
      ),
      borderData: FlBorderData(
          show: false, border: Border.all(color: Colors.black, width: 10)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
    );
  }
}
