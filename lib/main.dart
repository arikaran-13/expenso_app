import 'package:expenso_app/app.dart';
import 'package:expenso_app/provider/expenso_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context)=>ExpenseAppProvider()),
          ],
        child: MyApp(),
      )

  );
}


