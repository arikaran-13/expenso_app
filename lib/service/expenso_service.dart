

import 'dart:convert';

import 'package:expenso_app/model/CreateAccountRequest.dart';
import 'package:expenso_app/model/LoginRequest.dart';
import 'package:expenso_app/model/LoginResponse.dart';
import 'package:http/http.dart' as http;

import 'package:expenso_app/util/constants.dart';

import '../model/CreateAccountResponse.dart';

class ExpenseService{

  String response = "Loading..";

   Future<String> getTestMessage() async{
     var url = Uri.parse("${ExpenseConstants.baseEndpoint}${ExpenseConstants.testEndPoint}");
     var futureResponse = await http.get(url);
     if(futureResponse.statusCode == 200){
      var responseBody = futureResponse.body;
       response =  responseBody as String;
       return response;
     }else {
       response = "something went wrong";
       return response;
     }

  }

  Future<LoginResponse> login(LoginRequest loginRequest) async{
     var url = Uri.parse(ExpenseConstants.loginEndPoint);
     var response = await http.post(
         url,
         headers: {
           'Content-Type': 'application/json; charset=UTF-8',
         },
         body: jsonEncode(loginRequest.toJson()));
     if(response.statusCode != 200){
       throw Exception("Login Failed");
     }
     var body = jsonDecode(response.body) as Map<String ,dynamic>;
     return LoginResponse.fromJson(body);
  }

  Future<CreateAccountResponse> register(CreateAccountRequest createAccountRequest) async{
     var url = Uri.parse(ExpenseConstants.registerEndPoint);
     var response = await http.post(
         url,
       headers: {
           'Content-Type': 'application/json; charset=UTF-8',
       },
       body: jsonEncode(createAccountRequest.toJson())
     );
     if(response.statusCode != 201){
       throw Exception("Cannot able to create user");
     }
     var body = jsonDecode(response.body) as Map<String,dynamic>;
     return CreateAccountResponse.fromJson(body);
  }

}