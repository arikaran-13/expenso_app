
import 'package:expenso_app/service/expenso_service.dart';
import 'package:flutter/material.dart';

class ExpenseAppProvider extends ChangeNotifier{

  final ExpenseService _service = ExpenseService();
  String response = "";

  Future<void> testMessage() async {
   response = await _service.getTestMessage();
   notifyListeners();
  }
}