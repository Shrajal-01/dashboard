// import 'package:flutter/material.dart';

// class PerformanceChart extends StatelessWidget {
//   const PerformanceChart({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 600,
//       height: 250,
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black12)],
//       ),
//       child: const Center(child: Text('Chart Placeholder')),
//     );
//   }
// }

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerformanceChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    const years = [
                      '2015',
                      '2016',
                      '2017',
                      '2018',
                      '2019',
                      '2020',
                    ];
                    if (value >= 0 && value < years.length) {
                      return Text(years[value.toInt()]);
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            lineBarsData: [
              _buildLine(
                color: Colors.pinkAccent,
                values: [35, 25, 15, 40, 15, 45],
                isPending: true,
              ),
              _buildLine(
                color: Colors.deepPurple,
                values: [22, 18, 44, 38, 20, 35],
              ),
            ],
            lineTouchData: LineTouchData(
              enabled: true,
              touchTooltipData: LineTouchTooltipData(
                tooltipMargin: 10,
                fitInsideHorizontally: true,
                fitInsideVertically: true,
                getTooltipItems: (touchedSpots) {
                  return touchedSpots.map((spot) {
                    return LineTooltipItem(
                      '2023\n${spot.y.toInt()}',
                      const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }).toList();
                },
              ),
            ),
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            minX: 0,
            maxX: 5,
            minY: 0,
            maxY: 50,
          ),
        ),
      ),
    );
  }

  LineChartBarData _buildLine({
    required Color color,
    required List<double> values,
    bool isPending = false,
  }) {
    return LineChartBarData(
      spots: List.generate(
        values.length,
        (index) => FlSpot(index.toDouble(), values[index]),
      ),
      isCurved: true,
      gradient: LinearGradient(
        colors: [color.withOpacity(0.8), color.withOpacity(0.2)],
      ),
      barWidth: 5,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(
        show: true,
        gradient: LinearGradient(
          colors: [color.withOpacity(0.3), Colors.transparent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
