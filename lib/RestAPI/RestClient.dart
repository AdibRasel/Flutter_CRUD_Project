import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Utility/Utility.dart';	

var BaseURL = "http://localhost:5000/api/v1/";

Future<List> ProductListAll()async{
  // Future হচ্ছে একটা ডাটা যেটা আসবে ভবিষ্যতে। এখানে আমরা ডাটা পেতে চাইছি একটা লিস্টের মতো হবে। 

  var URL = Uri.parse("${BaseURL}list");

  var PostHeader = {
    "Content-Type": "application/json"
  };

  var response = await http.get(URL, headers: PostHeader);


  var ResultCode = response.statusCode;

  var ResulBody = json.decode(response.body);


  if(ResultCode == 200 && ResulBody['status'] == "success"){

    SuccessToast("Product list successfully");


    return ResulBody['data'];

  } else{

    ErrorToast("Request Failed ! try again");

    return [];

  }


}




Future <bool> ProductCreateRequest(FormValues) async {
  // Future হচ্ছে একটা ডাটা যেটা আসবে ভবিষ্যতে। এখানে আমরা ডাটা পেতে চাইছি একটা বুলিয়ানের এর মত হবে।


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





