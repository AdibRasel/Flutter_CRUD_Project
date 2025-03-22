import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Utility/Utility.dart';	

var BaseURL = "https://flutter-backend-all-api.onrender.com/api/v1/";

// See All Product
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



// Create Product
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





// Create Product
Future <bool> ProductUpdateRequest(FormValues, ID) async {
  // Future হচ্ছে একটা ডাটা যেটা আসবে ভবিষ্যতে। এখানে আমরা ডাটা পেতে চাইছি একটা বুলিয়ানের এর মত হবে।


  var URL = Uri.parse("${BaseURL}update/${ID}");

  var PostBody = json.encode(FormValues);

  var PostHeader = {
    "Content-Type": "application/json"
  };

  var response = await http.put(URL, headers: PostHeader, body: PostBody) ;

  var ResultCode = response.statusCode;
  var ResulBody = json.decode(response.body);

  if(ResultCode == 200 && ResulBody['status'] == "success"){
    SuccessToast("Product Update successfully");
    return true;
  } else{
    ErrorToast("Request Failed ! try again");
    return false;
  }

}






// Delete Product
Future<bool> ProductDeleteRequest(ProductID) async {
  // Future হচ্ছে একটা ডাটা যেটা আসবে ভবিষ্যতে। এখানে আমরা ডাটা পেতে চাইছি একটা বুলিয়ানের এর মত হবে।

  var URL = Uri.parse("${BaseURL}delete/$ProductID");

  // var PostBody = json.encode({"delete": ProductID});

  var PostHeader = {
    "Content-Type": "application/json"
  };

  // var response = await http.delete(URL, headers: PostHeader, body: PostBody) ;
  var response = await http.delete(URL, headers: PostHeader) ;

  var ResultCode = response.statusCode;
  var ResulBody = json.decode(response.body);

  if(ResultCode == 200 && ResulBody['status'] == "success"){
    SuccessToast("Product deleted successfully");
    return true;
  } else{
    ErrorToast("Delete Failed ! try again");
    return false;
  }

}

