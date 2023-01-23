
import 'dart:math';

import 'package:flutter/material.dart';

class Lottery extends StatefulWidget {
   Lottery({Key? key}) : super(key: key);

  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  late int randomCount=0, counter =0;

  bool isGreater = false;
  bool isWin = true;
  Random random = Random();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottery App counter: ${counter}"),
      ),

      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
              isWin == true ?
      ((randomCount ==5 ) ? "You Win the game ${randomCount } " : "Please Try Again"  ): " You not win"
    ),

            SizedBox(
              height: 30,
            ),


            
            Text(counter > 5 ?  "Lottery App counter: ${counter}" : "Lottery App counter is false"),

            SizedBox(
              height: 50,
            ),

            Text(  "Random App counter: ${randomCount}" )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child:
        // Icon(counter > 5 ? Icons.add : Icons.refresh  ),
        Icon((isWin == false)   ? Icons.add : Icons.refresh  ),
        onPressed: (){
          setState(() {
            randomCount = random.nextInt(10);
            counter++;
            print("Lottery App Random counter: ${randomCount }");
            print("Lottery App Random counter: ${isWin }");
            print("Lottery App counter: ${counter +randomCount }");

          });
        },
      ),

    );
  }
}
