import 'package:expenso_app/components/transaction_type_widget.dart';
import 'package:flutter/material.dart';

class IncomeAndExpenseWidget extends StatefulWidget {
  const IncomeAndExpenseWidget({super.key});

  @override
  State<IncomeAndExpenseWidget> createState() => _IncomeAndExpenseWidgetState();
}

class _IncomeAndExpenseWidgetState extends State<IncomeAndExpenseWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15.0,),
        TransactionTypeWidget(
            iconName: "assets/icons/increase.png",
            iconColor: Colors.green.shade100,
            transactionType: "Income",
            transactionTypeColor: Colors.green.shade600,
            amount: '₹2,34,566'
        ),
        const SizedBox(width: 10.0,),
        TransactionTypeWidget(
            iconName: "assets/icons/decrease.png",
            iconColor: Colors.red.shade100,
            transactionType: "Expense",
            transactionTypeColor: Colors.red.shade600,
            amount: '₹24000'
        ),
      ],
    );
  }
}
