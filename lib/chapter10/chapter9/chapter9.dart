import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_f/chapter10/chapter9/models/UserModels.dart';
import 'package:http/http.dart' as http;


class Chapter9 extends StatefulWidget {
  const Chapter9({Key? key}) : super(key: key);

  @override
  State<Chapter9> createState() => _Chapter9State();
}

class _Chapter9State extends State<Chapter9> {

  List<UserModels> userList = [];



  Future<List<UserModels>> getUserApi() async{
    final response  = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode == 200) {
      for (Map i in data) {
        print(i['name']);
        userList.add(UserModels.fromJson(i));
      }

      return userList;
    }
    else{
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapter9"),
      ),
      body: Column(
        children: [
          Expanded(child: FutureBuilder(
            future: getUserApi(),
            builder: (context, AsyncSnapshot<List<UserModels>> snapshot){


              if(!snapshot.hasData) {
              return CircularProgressIndicator();
            }
              else {
    return ListView.builder(
    itemCount: userList.length,
    itemBuilder: (context, index) {
    return Card(
    child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [


            ReuseAblecode(title:  'Name : ', value:  snapshot.data![index].name.toString()),
            SizedBox(height: 15,),

            ReuseAblecode(title:  'User Name :', value:  snapshot.data![index].username.toString()),
            SizedBox(height: 15,),
            ReuseAblecode(title:  'Email : ', value:  snapshot.data![index].email.toString()),
            SizedBox(height: 15,),
            ReuseAblecode(title:  'Address : ', value:  snapshot.data![index].address.toString()),
      SizedBox(height: 15,),
            ReuseAblecode(title:  'Address of City: ', value:  snapshot.data![index].address!.city.toString()),
    SizedBox(height: 15,),
            ReuseAblecode(title:  'Geo: ', value:  snapshot.data![index].address!.geo!.lat.toString()),

          ],
        ),
      ),

    ],
    )
    );
    });

     }
            }
          ),
          )

        ],
      ),
    );
  }
}

class ReuseAblecode extends StatelessWidget {

  String title, value;


    ReuseAblecode({Key? key, required this.title, required this.value }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text(title),
        Text(value),
      //  snapshot.data![index].name.toString()
      ],
    );
  }
}

