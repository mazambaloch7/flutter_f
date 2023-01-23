

import 'dart:convert';

import 'package:flutter_f/chapter10/chornaapp_116/servies/utilitly/AppUrls.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_f/chapter10/chornaapp_116/Models/WorldStateModel.dart';

import '../Utils/AppUrl.dart';

class StatesServies2 {

  Future<WorldStateModel> fetchWorldStatesRecode() async{

    final response  =  await http.get(Uri.parse(AppUrl2s.baseUrl));

    if(response.statusCode == 200){
      print("response code is ${response.statusCode}");
      
      var data =  jsonDecode(response.body);

      print("response code is ${WorldStateModel.fromJson(data)}");
      return WorldStateModel.fromJson(data);

      
    } else {
      print("Error thown code is ");
      throw Exception('Error');


    }

  }
}