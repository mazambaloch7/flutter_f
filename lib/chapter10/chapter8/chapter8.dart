import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Example2 extends StatefulWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {

  List<Photos> photoList = [];

  Future<List<Photos>> getPhotos() async {
    final  response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

    var data =  jsonDecode(response.body.toString());
    
        if(response.statusCode == 200){
          for(Map i in data){
            Photos photos = Photos(title: i['title'], url: i['url']);
            photoList.add(photos);
          }
          return photoList;
        } else {
          return photoList;
        }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api 8"),
      centerTitle: true,),

      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPhotos(),
                builder: (context, AsyncSnapshot<List<Photos>> snapshot)
            {
              return ListView.builder(
                itemCount: photoList.length,
                  itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data![index].url.toString()),
                  ),
                  title: Text(snapshot.data![index].title.toString()),
                );
              }
              );

            }
            ),
          ),

        ],
      ),
    );
  }
}

class Photos{
  String title, url;
  Photos({required this.title, required this.url});
}
