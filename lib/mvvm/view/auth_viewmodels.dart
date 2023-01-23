

import 'package:flutter/cupertino.dart';
import 'package:flutter_f/mvvm/respository/auth_repository.dart';

import '../utils/uitels.dart';

class AuthViewModel with ChangeNotifier{

  final _myRepo = AuthRepository();

  Future<void> loginApi(dynamic data, BuildContext context) async{

    _myRepo.lgoinApi(data).then((value) {
      print(value.toString());
      Utils.flushBarSuccessMessage("Login Api calling....${data.toString()}", context);

    },).onError((error, stackTrace) {
      print(error.toString());
      Utils.flushBarErrorMessage("Error  Api Not  calling.... ${data.toString()}", context);


    });
  }

}