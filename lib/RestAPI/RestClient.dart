import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Utility/Utility.dart';	

var BaseURL = "http://localhost:5000/api/v1/";

Future <bool> ProductCreateRequest(FormValues) async {

  var URL = Uri.parse("${BaseURL}create");

  var PostBody = json.encode(FormValues);

  var PostHeader = {
    "Content-Type": "application/json"
  };

  var response = await http.post(URL, headers: PostHeader, body: PostBody) ;

  var ResultCode = response.statusCode;
  var ResulBody = json.decode(response.body);

  if(ResultCode == 200 && ResulBody['status'] == "success"){
    SuccessToast("Product created successfully");
    return true;
  } else{
    ErrorToast("Request Failed ! try again");
    return false;
  }

}