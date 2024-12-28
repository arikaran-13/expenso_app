

import 'package:expenso_app/components/custom_input_field.dart';
import 'package:expenso_app/model/LoginRequest.dart';
import 'package:expenso_app/routes/routes.dart';
import 'package:expenso_app/service/expenso_service.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  final _loginDetails = LoginRequest();
  var expenseService = ExpenseService();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Icon(
                    Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 50.0,),
                CustomInputField(
                   textEditingController: userNameController,
                   hintText: "Enter your username",
                   label: "Username",
                   validationMessage: "Username is required field"
                ),
                const SizedBox(height: 30.0,),
                CustomInputField(
                  textEditingController: passwordController,
                  hintText: "Enter your password",
                  label: "Password",
                  validationMessage: "Password is required field",
                ),
                const SizedBox(height:  5.0,),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Forgot your password?"),
                      ],
                    ),
                  ),
                  onTap: (){
                    print("on tap inside container");

                  },
                ),
                const SizedBox(height: 40.0,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black
                  ),
                  child: MaterialButton(
                      onPressed: (){
                        print("on press");
                        var password = passwordController.value.text;
                        var username = userNameController.value.text;
                        if( password.isNotEmpty && username.isNotEmpty) {
                          print("inside if");
                          _loginDetails.setPassword = password;
                          _loginDetails.setUsername = username;
                          loginRequest(_loginDetails, context);
                        }
                        else{
                          print("username or password is empty");
                        }
                      },
                    child: const Text(
                        "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0,),
                InkWell(
                  child: const Text(
                      "Dont have an account? Register here"
                  ),
                  onTap: (){
                    print('on tap register button');
                    AppRoutes.navigateToRegisterPage(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

    void loginRequest(LoginRequest loginDetails,BuildContext buildContext) {
    print("from login");
      var loginResponse = expenseService.login(loginDetails);
      loginResponse.then(
              (res) => {
                 AppRoutes.navigateToHomePage(context,res.username)
              });
      print(loginResponse);

    }
}
