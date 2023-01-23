import 'package:flutter/material.dart';

class StateFullCounter extends StatefulWidget {
  const StateFullCounter({Key? key}) : super(key: key);

  @override
  State<StateFullCounter> createState() => _StateFullCounterState();
}

class _StateFullCounterState extends State<StateFullCounter> {

  
  int counter =0;

  @override
  void initState() {
     super.initState();
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Text("State Full Counter "),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            ElevatedButton(onPressed: (){

              setState(() {
                counter++;
                print("Counter Value  ${counter}");

              });

            }, child: Text("Pressed Me  ${counter}")),

            Text("Counter Value of the  Button  ${counter}")


          ],
          
        ),
      ),
    );
  }
}
