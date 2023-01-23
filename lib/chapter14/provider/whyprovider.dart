import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({Key? key}) : super(key: key);

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {



  int count =0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


Timer.periodic(Duration(seconds: 1), (timer) {
  count++;
  print(count);
  setState(() {

      });


  });


  }



  @override
  Widget build(BuildContext context) {

    print('build'+count.toString());
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Text("r "),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("DateTime.now().hour.toString()+' : '+DateTime.now().minute.toString()+' : '+DateTime.now().second.toString()"),
            Text(DateTime.now().hour.toString()+' : '+DateTime.now().minute.toString()+' : '+DateTime.now().second.toString()),



            ElevatedButton(onPressed: (){

              setState(() {
                count++;
                print("Counter Value  ${count}");

              });

            }, child: Text("Pressed Me  ${count}")),

            Text("Counter Value of the  Button  ${count}"),



          ],

        ),
      ),
    );

  }
}
