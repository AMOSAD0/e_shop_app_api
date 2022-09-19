import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper{
  static Dio ?dio;
  static init(){
    dio=Dio(
    BaseOptions(
      baseUrl: 'https://student.valuxapps.com/api/',
      receiveDataWhenStatusError: true,
      headers: {
        'Content-Type':'application/json'
      }
     ),
    );
  }

  static Future<Response> PostData({
  @required String ?url,
  @required Map<String,dynamic> ?data,
    Map<String,dynamic>? query
})async{
    return dio!.post(
        url!,
      data: data!,
      queryParameters: query,
    );
  }

}