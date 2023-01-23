import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_f/chapter10/chapter7/Models/PostModels.dart';
import 'package:http/http.dart' as http;


class Chapter10Home extends StatefulWidget {
  const Chapter10Home({Key? key}) : super(key: key);

  @override
  State<Chapter10Home> createState() => _Chapter10HomeState();
}

class _Chapter10HomeState extends State<Chapter10Home> {



  List<PostModels> postList = [];

  Future<List<PostModels>> getPostApi () async {
    final response = await  http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    var data = jsonDecode(response.body.toString());

    if(response.statusCode == 200){
      postList.clear();
      for(Map i in data){
        postList.add(PostModels.fromJson(i ));
      }
      return postList;
    }
    else
    {
      return postList;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Api'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: getPostApi(),
                  builder: (context, snapshot) {
                    if(!snapshot.hasData){
                      return Center(child: Text("Loading", style: TextStyle(
                        fontSize: 22
                      ),));
                    } else{
                      return ListView.builder(
                          itemCount: postList.length,
                          itemBuilder: (context, index){
                        return Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("userId: "+postList[index].userId.toString()),
                              Text(" id: "+postList[index].id.toString()),
                              Text(" body: "+postList[index].body.toString()),
                              SizedBox(
                                height: 15,
                              )

                             ],
                          ),
                        );
                      } );
                    }
                  }),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
