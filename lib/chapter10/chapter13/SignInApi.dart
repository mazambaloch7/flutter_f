
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email,  password) async {
    try {
      Response response =await post(
        Uri.parse("https://reqres.in/api/login"),
        body: {
          'email' : email,
          'password' : password,
        }
      );

      if(response.statusCode ==200 ){

        var data  =  jsonDecode(response.body.toString());


        print("Response of the the Api:token  ${data['token']}  ");
        print("Account created succussfully");
      }
      else {
        print(('Account faild to login '));
      }

    }
    catch(e) {
      print(e.toString());

    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp APi'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),

              SizedBox(
                height: 25,
              ),

              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Passwrod",

                ),),

              SizedBox(
                height: 50,
              ),
              
              InkWell(

                onTap: (){
                  login(emailController.text.toString(), passwordController.text.toString());
                  print(" Button Pressed Successfully");
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text('Login')
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
