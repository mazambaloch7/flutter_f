import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

   static const String id   = 'SecondSreen';


  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text("Second Screen "),
      ),
    );
  }
}
