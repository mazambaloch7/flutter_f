import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Chapter7 extends StatelessWidget {
  const Chapter7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SafeArea(
        child: Column(
          children: [

        Badge(
        position: BadgePosition.topEnd(top: 0, end: 3),
        animationDuration: Duration(milliseconds: 300),
        animationType: BadgeAnimationType.slide,
        badgeContent: Text(
          "_counter.toString()",
          style: TextStyle(color: Colors.white),
        ),
        child: IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
      )

          ],
        ),
      ),
    );
  }
}
