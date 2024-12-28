import 'package:expenso_app/model/CreateAccountRequest.dart';
import 'package:expenso_app/routes/routes.dart';
import 'package:expenso_app/service/expenso_service.dart';
import 'package:flutter/material.dart';

import '../components/custom_input_field.dart';


class CreateAccount extends StatelessWidget {

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final currencyController = TextEditingController();
  final passwordRecheckController = TextEditingController();
  final globalKey = GlobalKey<FormState>();
  final expenseService = ExpenseService();

   CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Create Account",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30.0,),
              Form(
                key: globalKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        CustomInputField(
                          textEditingController: userNameController,
                          hintText: "Username",
                          label: "Username",
                          validationMessage: "Username is required",
                        ),
                        const SizedBox(height: 30.0,),
                        CustomInputField(
                          textEditingController: passwordController,
                          hintText: "Password",
                          label: "Password",
                          validationMessage: "Password is required",
                        ),
                        const SizedBox(height: 30.0,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: TextFormField(
                            controller: passwordRecheckController,
                            validator: (val){
                              if(val==null || val.isEmpty){
                                return "Password is required";
                              }
                              else if(val != passwordController.text){
                                return "Password does not match";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              hintText: "Confirm Password",
                              label: Text("Confirm password"), // Use labelText directly for InputDecoration
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30.0,),
                        ElevatedButton(
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 15,horizontal: 60.0)),
                            enableFeedback: true,
                            backgroundColor: WidgetStateProperty.all(Colors.black),
                            foregroundColor: WidgetStateProperty.all(Colors.white),
                            textStyle: WidgetStateProperty.all(const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ))
                          ),
                         onPressed: (){
                          if(globalKey.currentState!.validate()){
                              createNewAccount(context);
                          }
                          else{
                            print("not register");
                          }
                        },
                            child: const Text("Submit")
                        ),
                        const SizedBox(height: 30.0,),
                        InkWell(
                          child: const Text("Already have an account? login here"),
                          onTap: (){
                            AppRoutes.navigateToLoginPage(context);
                          },
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

  void createNewAccount(BuildContext context) {
    var newAccount = CreateAccountRequest();
    newAccount.username = userNameController.text;
    newAccount.password = passwordController.text;
    expenseService.register(newAccount).then(
      AppRoutes.navigateToLoginPage(context)
    );
  }
}
