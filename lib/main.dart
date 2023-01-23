import 'package:flutter/material.dart';
import 'package:flutter_f/chapter14/favouritScreem/provider_favourite.dart';
import 'package:flutter_f/chapter14/provider/ProviderCounter.dart';
import 'package:flutter_f/chapter14/provider/ProviderStateFile.dart';
import 'package:flutter_f/mvvm/utils/routs/routes.dart';
import 'package:flutter_f/mvvm/utils/routs/routes_name.dart';
import 'package:flutter_f/mvvm/view/auth_viewmodels.dart';
import 'package:flutter_f/mvvm/view/home_Screen.dart';
import 'package:provider/provider.dart';

import 'chapter10/covide_app/View/SplashScreen.dart';
import 'chapter14/favouritScreem/FavouriteSreen.dart';
import 'chapter14/provider/EampleProviderC.dart';
import 'chapter14/provider/eample_provider.dart';
import 'chapter14/stateles.dart';
import 'darktheme/DarkTheme.dart';
import 'darktheme/ThemeChangeProvider.dart';


void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) =>  AuthViewModel(),)
    ],
        child: MaterialApp(
          initialRoute: RoutesName.login,
          onGenerateRoute: Routes.generateRoute ,
        )
    );

    // final themeChange = Provider.of<ThemeChnageProvider>(context,listen: false);

    //provider example
/*    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_)=> ProviderCounter()),
        ChangeNotifierProvider(create: (_)=> ExampleOfProvider()),
        ChangeNotifierProvider(create: (_)=> FavouriteProvider()),
        ChangeNotifierProvider(create: (_)=> ThemeChnageProvider()),

      ],

      child: Builder(builder: (BuildContext context){
        final themeChanger = Provider.of<ThemeChnageProvider>(context);
        return MaterialApp
          (

          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
              scaffoldBackgroundColor:  const Color(0xFF00ff00),
              primarySwatch: Colors.red
          ),

          darkTheme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor:   Colors.grey,
            primarySwatch: Colors.yellow,
            iconTheme: IconThemeData(
              color: Colors.orange
            )

        ),



          *//* initialRoute: HomeScreenWhatsApp.id,

      routes:  {
        HomeScreenWhatsApp.id  : (context) => HomeScreenWhatsApp(),
        Chapter5.id : (context) => Chapter5(),
        SecondScreen.id : (context) => SecondScreen(),
      },*//*
          home: DarkTheme(),
        );
      }));*/


  }
}

