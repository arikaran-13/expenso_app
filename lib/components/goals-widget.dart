import 'package:flutter/material.dart';

class GoalsWidget extends StatefulWidget {
  const GoalsWidget({super.key});

  @override
  State<GoalsWidget> createState() => _GoalsWidgetState();
}

class _GoalsWidgetState extends State<GoalsWidget> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: MediaQuery.of(context).size.width*0.9,
        height: MediaQuery.of(context).size.height*0.1,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              child: Image.asset(
                "assets/icons/hamburger.png",
                width: 50,
                height: 50,
              ),
              width: 100,
            ),
            Container(
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
                value: 0.3,
              ),
              width: MediaQuery.of(context).size.width*0.6,
            )
          ],
        ),
      );
  }
}
