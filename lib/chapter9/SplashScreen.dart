import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_f/chapter9/chapter8.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();

  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool  isLogin =sp.getBool('isLogin') ?? false;

    if(isLogin){
      Timer(Duration(seconds: 3), () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen9()));
      });
    }
    else {
      Timer(Duration(seconds: 3), () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        height: double.infinity,
        fit: BoxFit.fitHeight,
          // image: NetworkImage("https://pixlr.com/images/index/collage.webp")),
          image: NetworkImage("https://pixlr.com/images/index/collage.webp")),
          // image: NetworkImage("https://cdn.dribbble.com/users/7505068/screenshots/15502898/media/d192a89dc6d8b5733d8a3c59cdfeef2d.mp4")),
    );
  }
}
