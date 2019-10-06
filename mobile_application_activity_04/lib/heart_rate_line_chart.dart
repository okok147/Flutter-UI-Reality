import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HeartRateLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> gradientColors = [
      Colors.white.withOpacity(0.9),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Colors.transparent),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 0.0, left: 0.0, top: 24, bottom: 12),
              child: FlChart(
                chart: LineChart(
                  LineChartData(
                    gridData: FlGridData(
                      show: false,
                      drawHorizontalGrid: false,
                      getDrawingVerticalGridLine: (value) {
                        return const FlLine(
                          color: Color(0xff37434d),
                          strokeWidth: 1,
                        );
                      },
                      getDrawingHorizontalGridLine: (value) {
                        return const FlLine(
                          color: Colors.white,
                          strokeWidth: 1,
                        );
                      },
                    ),
                    titlesData: FlTitlesData(
                      show: false,
                      bottomTitles: SideTitles(
                        showTitles: false,
                        reservedSize: 30,
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 2:
                              return 'MAR';
                            case 5:
                              return 'JUN';
                            case 8:
                              return 'SEP';
                          }

                          return '';
                        },
                        margin: 8,
                      ),
                      leftTitles: SideTitles(
                        showTitles: true,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 1:
                              return '10k';
                            case 3:
                              return '30k';
                            case 5:
                              return '50k';
                          }
                          return '';
                        },
                        reservedSize: 28,
                        margin: 12,
                      ),
                    ),
                    borderData: FlBorderData(
                        show: false,
                        border:
                            Border.all(color: Color(0xff37434d), width: 10)),
                    minX: 0,
                    maxX: 11,
                    minY: 0,
                    maxY: 6,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 5),
                          FlSpot(1.9, 4.2),
                          FlSpot(2.7, 1.5),
                          FlSpot(4.2, 2.0),
                          FlSpot(5.5, 0.8),
                          FlSpot(7.2, 3.5),
                          FlSpot(9.0, 1.2),
                          FlSpot(10.0, 1.8),
                          FlSpot(10.1, 1.8),
                        ],
                        isCurved: true,
                        colors: gradientColors,
                        barWidth: 4.2,
                        isStrokeCapRound: true,
                        dotData: FlDotData(
                          show: false,
                        ),
                        belowBarData: BelowBarData(
                          show: false,
                          colors: gradientColors
                              .map((color) => color.withOpacity(0))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
