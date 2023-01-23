import 'package:flutter/material.dart';
import 'package:flutter_f/mvvm/utils/routs/routes_name.dart';
import 'package:flutter_f/mvvm/utils/uitels.dart';
import 'package:flutter_f/mvvm/view/auth_viewmodels.dart';
import 'package:provider/provider.dart';

import '../res/color.dart';
import '../res/components/round_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _emailController= TextEditingController();
  TextEditingController _passwordController= TextEditingController();


  ValueNotifier<bool> _obsecurePasword = ValueNotifier<bool>(true);


  FocusNode emailFocusNode =FocusNode();
  FocusNode passwordFocusNode = FocusNode();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _obsecurePasword.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {


    final authviewModel = Provider.of<AuthViewModel>(context);

    final height = MediaQuery.of(context).size.height*1;



    return Scaffold(


      appBar: AppBar(
        title: Text("Login"),
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
                focusNode: emailFocusNode,
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.mail),

                ),
                onFieldSubmitted: (value) {
                 Utils.fieldFocuseChange(context, emailFocusNode, passwordFocusNode);
                },

              ),

              ValueListenableBuilder(
                valueListenable: _obsecurePasword,
                builder: (
                    context,
                    value,
                    child) {
                return TextFormField(

                  obscureText: _obsecurePasword.value,
                  obscuringCharacter: "*",
                  focusNode: passwordFocusNode,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                        onTap: (){
                          _obsecurePasword.value =  !_obsecurePasword.value;
                        },
                        child: Icon(_obsecurePasword.value ? Icons.visibility_off_outlined  : Icons.visibility )),

                  ),

                );

              },),


              SizedBox(
                height: MediaQuery.of(context).size.height*.1,
              ),



              RoundButton(
                title: 'Login',

                onPressed: (){
                  print("Button Pressed");
                  if(_emailController.text.isEmpty){
                    Utils.flushBarErrorMessage("Please Enter the Email", context);
                  }

                   else if(_passwordController.text.isEmpty){
                    Utils.flushBarErrorMessage("Please Enter the Password", context);
                  }

                  else if(_passwordController.text.length <6){
                    Utils.flushBarErrorMessage("Enter the 6 digit password", context);
                  }
                  else {

                    print("Api calling");
                    Map data ={
                      'email': _emailController.text.toString(),
                      'password':  _passwordController.text.toString()
                    };
                    authviewModel.loginApi(data  , context);


                    Utils.flushBarSuccessMessage("Api callind", context);

                  }

              },
                loading: false,)


            ],
          ),
        ),
      ),
    );
  }
}
