import 'dart:async';

import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'WorldStates2.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2>  with TickerProviderStateMixin {

  late final AnimationController _controler =  AnimationController(
      duration: Duration(seconds:  3),
      vsync: this)..repeat();

  @override
  void initState() {
    // TODO: implement initStat

    Timer(Duration(seconds: 10), () {

      Navigator.push(context, MaterialPageRoute(builder: ((context)  =>
          WorldStatesScreen()
      )));

    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(


        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(animation: _controler,
            child: Container(
              height:  200,
              width: 200,
              child: Center(
                child: Image(image: AssetImage('images/virus.png')),
              ),
            ),
            builder: (context, child) {
              return Transform.rotate(angle: _controler.value * 2.0 * math.pi , child: child,);
            },),

          SizedBox(
            height: MediaQuery.of(context).size.height* .08,
          ),

          Align(
            alignment: Alignment.center,
            child: Text('Covide 19 \n Tracker App  ',  style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

            ),),
          ),
        ],
      ),
    );
  }
}
