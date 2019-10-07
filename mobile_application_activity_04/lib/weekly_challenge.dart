import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MaggieLineChartSample2 extends StatefulWidget {
  @override
  _MaggieLineChartSample2State createState() => _MaggieLineChartSample2State();
}

class _MaggieLineChartSample2State extends State<MaggieLineChartSample2> {
  List<Color> gradientColors = [
    Colors.redAccent.withOpacity(0.95),
    Colors.redAccent.withOpacity(0.90),
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
              color: Colors.blue.withOpacity(0.0),
            
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
      maxY: 70,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 7),
            FlSpot(1.2, 12),
            FlSpot(2.7, 22),
            FlSpot(5, 28),
            FlSpot(6.5, 37),
            FlSpot(8.5, 39),
            FlSpot(10.2, 48),
            FlSpot(10.8, 48.4),
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
                .map((color) => color.withOpacity(0.000))
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
