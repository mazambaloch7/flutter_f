

import 'package:flutter/material.dart';

class Chapter4 extends StatefulWidget {
  const Chapter4({Key? key}) : super(key: key);

  @override
  State<Chapter4> createState() => _Chapter4State();
}

class _Chapter4State extends State<Chapter4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapter"),
      ),

      body:  Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [


            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return             ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amberAccent,
                  child: Icon(Icons.person),
                ),

                title: Text("This is the Title", style: TextStyle( fontSize: 22,  fontWeight: FontWeight.bold),),
                subtitle: Text("this is the description "),
                trailing: Text("3:32"),

              );

            })),




/*

            Stack(
              children: [

                Container(
                  color: Color(0xff1ff1f1),
                  height: 140,
                  width: 140,
                  child: Text('data'),
                ),


                Container(
                  color: Color(0xff1ff000),
                  height: 120,

                  width: 120,

                  child: Text('data'),
                ),

                Container(
                  color: Color(0xff000000),
                  height: 100,
                  width: 100,

                  child: Text('data'),
                )



              ],
            ),
*/


          ],
        ),
      ),
    );
  }
}
