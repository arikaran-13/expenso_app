import 'package:expenso_app/components/view-all-buttoon-widget.dart';
import 'package:flutter/material.dart';

class TotalBalanceWidget extends StatefulWidget {
  const TotalBalanceWidget({super.key});

  @override
  State<TotalBalanceWidget> createState() => _TotalBalanceWidgetState();
}

class _TotalBalanceWidgetState extends State<TotalBalanceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 10.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Balance",
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 5.0,),
              Text(
                "₹2,21,566",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
          Spacer(),
          ViewAllButton(),
          SizedBox(width: 10.0,)
        ],
      ),
    );
  }
}
