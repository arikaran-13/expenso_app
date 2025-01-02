import 'package:expenso_app/components/view-all-buttoon-widget.dart';
import 'package:flutter/material.dart';

class GoalsHeadingWidget extends StatelessWidget {
  const GoalsHeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20.0,),
        Text(
          "Goals",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0
          ),
        ),
        Spacer(),
        ViewAllButton(),
        SizedBox(width: 10.0,),
      ],
    );
  }
}
