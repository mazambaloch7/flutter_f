import 'dart:convert';

import 'package:flutter_f/chapter10/chornaapp_116/servies/utilitly/AppUrls.dart';
import 'package:flutter_f/chapter10/chornaapp_116/view/world_states.dart';
import 'package:http/http.dart' as  http;

import '../Models/WorldStateModel.dart';

class  StatesServies{


  Future<WorldStateModel> fetchWorldStateRecodes() async {
    final response =  await http.get(Uri.parse(AppUrls.worldStatesApi)) ;

    if(response.statusCode  == 200 ) {

      print(" Api status code :   ${response.statusCode}");

      var data  =  jsonDecode(response.body);

      print(" Api data  ${WorldStateModel.fromJson(data).toString()}");
      return WorldStateModel.fromJson(data);
    }
    else {
throw Exception('Error');
print("Error in api states");
    }
  }





  Future<dynamic> fetchContriesList() async {

    var data;

    final response =  await http.get(Uri.parse(AppUrls.countrieslist)) ;

    if(response.statusCode  == 200 ) {

      print(" Api status code :   ${response.statusCode}");

      data  =  jsonDecode(response.body);

      print(" Api data  ${data.toString()}");
      return data;
    }
    else {
      throw Exception('Error');
      print("Error in api states 10:38  ");
    }
  }




}