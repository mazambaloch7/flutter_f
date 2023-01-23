import 'package:flutter/material.dart';

class StateLessCounter extends StatelessWidget {
    StateLessCounter({Key? key}) : super(key: key);

  int count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            count++;
            print("Counter is pressed  ${count}");

          }, child: Text("Pressed me  ${count}"))
        ],
      ),
    );
  }
}
