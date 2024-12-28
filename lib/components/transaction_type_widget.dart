import 'package:flutter/material.dart';

class TransactionTypeWidget extends StatefulWidget {

  final String iconName;
  final String transactionType;
  final String amount;
  final Color iconColor;
  final Color transactionTypeColor;

  const TransactionTypeWidget({
        super.key,
        required this.iconName,
        required this.iconColor,
        required this.transactionType,
        required this.amount,
        required this.transactionTypeColor
      });

  @override
  State<TransactionTypeWidget> createState() => _TransactionTypeWidgetState();
}

class _TransactionTypeWidgetState extends State<TransactionTypeWidget> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height*0.1,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Row(
          children: [
            const SizedBox(width: 10.0,),
            Container(
              width: 60.0,
              height: 60.0,
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.iconColor
              ),
              child: Image.asset(widget.iconName),
            ),
            const SizedBox(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.transactionType,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                      color: widget.transactionTypeColor
                  ),
                ),
                SizedBox(height: 1.0,),
                Text(widget.amount,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0
                  ),
                )
              ],
            )
          ],
        ),
      );
  }
}
