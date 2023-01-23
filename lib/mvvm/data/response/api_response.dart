import 'package:flutter_f/mvvm/data/response/status.dart';

class ApiResponse<T>{
  Status? status;
  T?  Data;
  String? message;

  ApiResponse(this.status, this.Data, this.message);


  ApiResponse.loading() : status = Status.Loading;
  ApiResponse.completed() : status = Status.COMPLETED;
  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    return "Status: $status \n Message :  $message \n  Data:  $Data";
  }
}