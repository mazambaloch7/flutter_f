import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExampleProviderone extends StatefulWidget {
  const ExampleProviderone({Key? key}) : super(key: key);

  get value => null;

  @override
  State<ExampleProviderone> createState() => _ExampleProvideroneState();
}

class _ExampleProvideroneState extends State<ExampleProviderone> {


  double value =0;


  @override
  Widget build(BuildContext context) {


    print("Bulider building");

    final provider = Provider.of<ExampleProviderone>(context, listen: false);


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


            Slider(
                min: 0,
                max: 10,
                value: provider.value, onChanged: ((val) {
                  value = val;
                  // provider.set
                  print("value of the slider is : ${value}");
                  setState(() {
                    print(value);
                  });
            })),

            SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange
                      ),
                      child: Center(
                        child: Text("Button 1"),
                      ),
                    ),

                  ),


                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green
                      ),
                      child: Center(
                        child: Text("Button 2"),
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),


    );

  }
}
