import 'package:flutter/material.dart';
import 'package:flutter_f/chapter5/SecondScreen.dart';

class Chapter5 extends StatefulWidget {

  static const String id = "/chapter5";

  Chapter5({Key? key}) : super(key: key);

  @override
  State<Chapter5> createState() => _Chapter5State();
}

class _Chapter5State extends State<Chapter5> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(

        appBar:  AppBar(
          title: Text("Drawer"),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration:  BoxDecoration(
                    color: Colors.cyan,
                  ) ,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://media.istockphoto.com/photos/freedom-chains-that-transform-into-birds-charge-concept-picture-id1322104312?b=1&k=20&m=1322104312&s=170667a&w=0&h=VQyPkFkMKmo0e4ixjhiOLjiRs_ZiyKR_4SAsagQQdkk="),

                  ),

                  accountName: Text("accountName"), accountEmail: Text("Email")),
              // DrawerHeader(child: Text("data"))

              ListTile(
                leading: Icon(Icons.person),
                title: Text('Page'),
                onTap: (){
                  Navigator.pushNamed(context, SecondScreen.id);
                  print("On the page taps");
                },
              )

            ],
          ),
        ),

        body: Center(
          child: ElevatedButton(
            child: Text("Move to Next"),
            onPressed: (){

              Navigator.pushNamed(
              context,
                 SecondScreen.id
              );

            },
          ),
        ),

      ),
    );
  }
}
