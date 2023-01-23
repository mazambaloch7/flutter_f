import 'package:flutter/material.dart';
import 'package:flutter_f/chapter9/chapter8.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  final formdata = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email'
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'password'
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                keyboardType: TextInputType.phone,
                controller: ageController,
                decoration: InputDecoration(
                  hintText: 'Age'
                ),
              ),

              SizedBox(
                height: 50,
              ),

              Column(
                children: [




                  Container(
                    width: double.maxFinite,
                    height: 50,
                    color: Colors.greenAccent,
                    child: InkWell(
                      child: Center(
                        child: Text(
                            "Login"),
                        
                      ),

                      onTap: () async {
                        SharedPreferences sp = await SharedPreferences.getInstance();
                        sp.setString('email', emailController.text.toString());
                        sp.setString('age', ageController.text.toString());
                        
                        sp.setBool('isLogin', true);
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen9()));
                        
                        
 
                        print("Taped");
                      }
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
