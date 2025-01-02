import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpenseBarChart extends StatefulWidget {
  const ExpenseBarChart({super.key});

  @override
  State<ExpenseBarChart> createState() => _MyBarChartState();
}

class _MyBarChartState extends State<ExpenseBarChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: BarChart(
        key: UniqueKey(),
        BarChartData(
          borderData: FlBorderData(
            show:false,
          ),
            gridData: FlGridData(
              drawVerticalLine: false,
              getDrawingHorizontalLine: (val){
                  return FlLine(
                    color: Colors.grey.shade400,
                    strokeWidth: 1.0,

                  );
              }
            ),
          maxY: 500,
          titlesData: FlTitlesData(
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (val,metadata){
                  switch(val.toInt()){
                    case 0:
                      return _doBarChartTitleTextStyle("Sun");
                    case 1:
                      return _doBarChartTitleTextStyle("Mon");
                    case 2:
                      return _doBarChartTitleTextStyle("Tue");
                    case 3:
                      return _doBarChartTitleTextStyle("Web");
                    case 4:
                      return _doBarChartTitleTextStyle("Thu");
                    case 5:
                      return _doBarChartTitleTextStyle("Fri");
                    default:
                      return _doBarChartTitleTextStyle("Sat");
                  }
                }
              )
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 100,
                reservedSize: 30,
                getTitlesWidget: (val,metaData){
                  return _doBarChartTitleTextStyle("${val.toInt()}");
                }
              )
            )
          ),
          barGroups: [
            BarChartGroupData(
                x:0,
                barRods: [
                  BarChartRodData(
                      toY: 150,
                    width: 30,
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(3)
                  )
                ]
            ),
            BarChartGroupData(
                x:1,
                barRods: [
                  BarChartRodData(toY: 170,
                    width: 30,
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(3)
                  )
                ]
            ),
            BarChartGroupData(
                x:2,
                barRods: [
                  BarChartRodData(toY: 90,
                      width: 30,
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(3)
                  )
                ]
            ),
            BarChartGroupData(
                x:3,
                barRods: [
                  BarChartRodData(toY: 189,
                      width: 30,
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(3)
                  )
                ]
            ),
            BarChartGroupData(
                x:4,
                barRods: [
                  BarChartRodData(toY: 350,
                      width: 30,
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(3)
                  )
                ]
            ),
            BarChartGroupData(
                x:5,
                barRods: [
                  BarChartRodData(toY: 120,
                      width: 30,
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(3)
                  )
                ]
            ),
            BarChartGroupData(
                x:6,
                barRods: [
                  BarChartRodData(toY: 160,
                      width: 30,
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(3)
                  )
                ]
            ),
          ]
        )
      ),
    );
  }

   Text _doBarChartTitleTextStyle(String text){
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.grey.shade600
      ),
    );
  }
}
