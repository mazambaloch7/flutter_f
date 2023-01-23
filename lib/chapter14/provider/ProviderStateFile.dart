import 'package:flutter/material.dart';
import 'package:flutter_f/chapter14/provider/ProviderCounter.dart';
import 'package:provider/provider.dart';

class ProviderStatetes extends StatefulWidget {
  const ProviderStatetes({Key? key}) : super(key: key);

  @override
  State<ProviderStatetes> createState() => _ProviderStatetesState();
}

class _ProviderStatetesState extends State<ProviderStatetes> {
  @override
  Widget build(BuildContext context) {
    final countprovider =Provider.of<ProviderCounter>(context);

    print("build Counter   ${countprovider.counter}" );

    return Scaffold(

      backgroundColor: Colors.lightGreenAccent,


      appBar: AppBar(
        title: Text("Provider state "),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            
            Text(countprovider.counter.toString() , style: TextStyle( fontSize: 50), )

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        countprovider.setCounter();
        print("countprovider.counter");
      },child: Icon(Icons.next_plan_rounded)),

    );
  }
}
