

import 'package:flutter_f/mvvm/data/networks/BaseApiServies.dart';
import 'package:flutter_f/mvvm/res/app_url.dart';

import '../data/networks/NetworkApiServies.dart';

class AuthRepository {

  BaseApiServies _apiServices = NetworkApiServies() ;



  Future<dynamic> lgoinApi(dynamic data) async{
    
    
    try{
      dynamic response  = await _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);
      return response;
  } catch (e) {
      throw e;
    }
  }


  Future<dynamic> registerApi(dynamic data) async{
//the

    try{
      dynamic response  = await _apiServices.getPostApiResponse(AppUrl.registerEndPoint, data);
      return response;
  } catch (e) {
      throw e;
    }
  }

}