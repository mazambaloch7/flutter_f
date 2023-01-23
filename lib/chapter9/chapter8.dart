import 'package:flutter/material.dart';
import 'package:flutter_f/chapter9/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen9 extends StatefulWidget {
  const HomeScreen9({Key? key}) : super(key: key);

  @override
  State<HomeScreen9> createState() => _HomeScreen9State();
}

String email='', age='';

class _HomeScreen9State extends State<HomeScreen9> {

  @override
  void initState() {
    super.initState();

    loadData();
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email') ?? '';
    age = sp.getString('age') ?? '';

    setState(() {
print(email);
print(age);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen 9 "),
        centerTitle: true,
      ),
      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Home Screen"),

          Column(
            children: [

SizedBox(
  height: 50,
),

              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Text("Email"),
                  Text(email.toString()),
                ],
              ),


              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Text("Age"),
                  Text(age.toString()),
                ],
              ),


              SizedBox(
                height: 50,
              ),

              Container(
                width: double.maxFinite,
                height: 50,
                color: Colors.greenAccent,
                child: InkWell(
                    child: Center(
                      child: Text(
                          "Log Out"),

                    ),

                    onTap: () async {
                      SharedPreferences sp = await SharedPreferences.getInstance();

                      sp.clear();

                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));



                      print("Taped");
                    }
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
