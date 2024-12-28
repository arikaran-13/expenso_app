import 'package:flutter/material.dart';

class ViewAllButton extends StatefulWidget {
  const ViewAllButton({super.key});

  @override
  State<ViewAllButton> createState() => _ViewAllButtonState();
}

class _ViewAllButtonState extends State<ViewAllButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
      child: Text(
        "View all",
        style: TextStyle(
            color: Colors.blue.shade800,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
