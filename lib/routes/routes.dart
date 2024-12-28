
import 'package:expenso_app/screens/home.dart';
import 'package:expenso_app/screens/login.dart';
import 'package:flutter/cupertino.dart';

import '../screens/register.dart';

class AppRoutes{

  static const String home = "/home";
  static const String login = "/login";
  static const String register = "/register";

  static Map<String,WidgetBuilder>routes = {
    home: (context) => const HomeScreen(),
    login: (context) => const LoginWidget(),
    register : (context)=> CreateAccount(),
  };

  static navigateToHomePage<T>(BuildContext context , [T? args]){
    Navigator.of(context).pushNamed(home,arguments: args);
  }

  static navigateToRegisterPage<T>(BuildContext context, [dynamic args]){
    Navigator.of(context).pushNamed(register,arguments: args);
  }

  static navigateToLoginPage<T>(BuildContext context , [T? args]){
    Navigator.of(context).pushNamed(login,arguments: args);
  }

}