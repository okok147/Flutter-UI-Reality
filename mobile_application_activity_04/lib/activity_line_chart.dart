import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ActivityLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> gradientColors = [
      Colors.white.withOpacity(1),
      Colors.white.withOpacity(0.5),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: AspectRatio(
        aspectRatio: 1.8,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: Colors.transparent),
          child: Padding(
            padding: const EdgeInsets.only(
                right: 18.0, left: 12.0, top: 24, bottom: 12),
            child: FlChart(
              chart: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: false,
                    drawHorizontalGrid: false,
                    getDrawingVerticalGridLine: (value) {
                      return const FlLine(
                        color: Colors.transparent,
                        strokeWidth: 1,
                      );
                    },
                    getDrawingHorizontalGridLine: (value) {
                      return const FlLine(
                        color: Colors.transparent,
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    show: false,
                    bottomTitles: SideTitles(
                      showTitles: false,
                      reservedSize: 22,
                      textStyle: TextStyle(
                          color: Colors.transparent,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
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
                        color: Colors.transparent,
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
                      show: true,
                      border: Border.all(color: Colors.transparent, width: 1)),
                  minX: 0,
                  maxX: 11,
                  minY: 0,
                  maxY: 6,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 0),
                        FlSpot(2.6, 2),
                        FlSpot(4.9, 5),
                        FlSpot(6.8, 3.1),
                        FlSpot(8, 4),
                        FlSpot(9.5, 3),
                        FlSpot(11, 4),
                      ],
                      isCurved: true,
                      colors: gradientColors,
                      barWidth: 0.5,
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: false,
                      ),
                      belowBarData: BelowBarData(
                        show: true,
                        colors: gradientColors
                            .map((color) => color.withOpacity(0.35))
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
    );
  }
}
