
import 'dart:math';

import 'package:expenso_app/components/transaction_type_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/bar_chart_demo.dart';
import '../components/goals-widget.dart';
import '../components/home_screen_top_widget.dart';
import '../components/income-and-expense-widget.dart';
import '../components/total_balance_widget.dart';
import '../components/view-all-buttoon-widget.dart';

class MainScreen extends StatefulWidget {
  final String username;
   MainScreen({super.key,required this.username});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children:
          [
             UserDetailsWidget(),
            SizedBox(height: 30.0,),
             TotalBalanceWidget(),
            SizedBox(height: 10.0,),
             IncomeAndExpenseWidget(),
            SizedBox(height: 20.0,),
            Row(
              children: [
                SizedBox(width: 20.0,),
                Text(
                    "Expense Chart",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            ExpenseBarChart(),
            SizedBox(height: 10.0,),
            GoalsWidget(),
            SizedBox(height: 10.0,),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.1,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),

              ),
              child: Center(child: Text("Goals details 1")),
            ),
            SizedBox(height: 10.0,),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.1,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),

              ),
              child: Center(child: Text("Goals details 2")),
            ),
            SizedBox(height: 10.0,),

            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.1,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),

              ),
              child: Center(child: Text("Goals details 3")),
            ),
            SizedBox(height: 10.0,),

          ]
        ),
      )
    );
  }
}
