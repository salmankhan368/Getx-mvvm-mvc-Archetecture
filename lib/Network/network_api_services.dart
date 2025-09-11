import 'dart:convert';
//jsonencode+decode
import 'dart:io';
//socketexception
import 'package:flutter/foundation.dart';
//k debug mode
import 'package:http/http.dart' as http;
import 'package:project_getx_mvc_mvvm/Data/app_exceptions.dart';

import 'package:project_getx_mvc_mvvm/Network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  //in future the dynamic value came mean any thing string map int map
  Future<dynamic> getApi(String url) async {
    // k debug is used ehen we run the app in debug mode the url print in terminal
    if (kDebugMode) {
      print(url);
    }
    //this is temporary variable which store response data from api
    //we dont now that what server sent us list map string so thats why we wrote dynamic
    dynamic responseJson;
    //try is use for exeception acc to our net and server issue

    try {
      final response = await http
          //http is a pakege which sent get request but http.get wnt to Uri obj not string
          //why it req obj not string ... /Ans/...string is a plan text while uuri object is stuctured data type
          //which break the string into little parts
          .get(Uri.parse(url))
          //change url String into Uri obj
          .timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
      //return response is helper which check sstatus code
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return responseJson;
  }

  @override
  Future postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      var headers = {
        'x-api-key': 'reqres-free-v1',
        'Content-Type': 'application/x-www-form-urlencoded',
      };

      // try {
      //   final response = await http
      //       .post(Uri.parse(url), body: jsonEncode(data))
      //       //JSONENCODE when user sent req to server
      //       //JSONDECODE when server response to user
      //       .timeout(Duration(seconds: 10));
      //   responseJson = returnResponse(response);
      final response = await http
          .post(Uri.parse(url), body: data, headers: headers)
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException();
      default:
        FetchDataException();
    }
  }
}
