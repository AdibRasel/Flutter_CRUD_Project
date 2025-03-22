import 'package:crud/RestAPI/RestClient.dart';
import 'package:crud/Utility/Utility.dart';
import 'package:flutter/material.dart';
import 'package:crud/Style/Style.dart';

import 'ProductGridViewScreen.dart';




class ProductUpdateScreen extends StatefulWidget {
  final Map ProductItem;
  const ProductUpdateScreen(this.ProductItem, {Key? key}) : super(key: key);

  @override
  State<ProductUpdateScreen> createState() => _ProductUpdateScreenState();
}

class _ProductUpdateScreenState extends State<ProductUpdateScreen> {

 Map<String, String> FormValues={ "Img": "", "ProductCode": "", "ProductName": "",  "Qty": "",  "TotalPrice": "", "UnitPrice": "" };

  bool Loading = false; 


  // প্রথমে এই ফাংশন টা কল হবে যখন এই স্ক্রিন টা লোড হবে। এই ফাংশন টা কল হবে প্রথমে।
  @override
  void initState() {
    setState(() {
                                        // উপরের ক্লাসের আইটেম ব্যবহার করতে widget. ব্যবহার করতে হবে।
      FormValues.update("Img", (value) => widget.ProductItem['Img']);
      FormValues.update("ProductCode", (value) => widget.ProductItem['ProductCode']);
      FormValues.update("ProductName", (value) => widget.ProductItem['ProductName']);
      FormValues.update("Qty", (value) => widget.ProductItem['Qty']);
      FormValues.update("TotalPrice", (value) => widget.ProductItem['TotalPrice']);
      FormValues.update("UnitPrice", (value) => widget.ProductItem['UnitPrice']);

    });
  }


  
  InputOnChange(FormValuesKey, InputValue){

    setState(() {

      FormValues.update(FormValuesKey, (value) => InputValue);
      // FormValues.update(FormValuesKey, (ekhane update kora lagte pare) => InputValue);

    });

  }



  

  FormOnSubmit()async{

    
    if(FormValues['ProductName']!.isEmpty){
      ErrorToast("Please enter Product Name");
    }  
    
    
     if(FormValues['ProductCode']!.isEmpty){
      ErrorToast("Please enter Product Code");
    } 
    
    
     if(FormValues['Img']!.isEmpty){
      ErrorToast("Please enter Product Image URL");
    } 
    
    
     if(FormValues['UnitPrice']!.isEmpty){
      ErrorToast("Please enter Product Unit Price");
    }  
    
    
     if(FormValues['TotalPrice']!.isEmpty){
     ErrorToast("Please enter Product Total Price");
    } 
    
    
     if(FormValues['Qty']!.isEmpty){
      ErrorToast("Please enter Product Quantity");
    } else{


     setState((){
      Loading = true;
     });
        
     var Result = await ProductUpdateRequest(FormValues, widget.ProductItem['_id']); // Product Update 


  
      setState((){
        Loading = false;
      });


      if(Result == true ){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductGridViewScreen()));
      }

      if(Result == false){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ProductGridViewScreen()), (Route route)=>false);
      }

    
    }



  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
      ),
      body: Stack(
        children: [
          // Background Graphics
          ScreenBackground(context),
          Container(
            child: Loading ? // Loading উপর ভিত্তি করে নিম্নের কাজ গুলো করবে। 

            const Center(
              child: CircularProgressIndicator(),
            ) 
            
            // Loading সত্য হলে উপরের অংশ দেখাবে
            :
            // Loading মিথ্যা হলে নিচের অংশ দেখাবে

            SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [



                  
                  TextFormField(
                    initialValue: FormValues['ProductName'],
                    decoration: AppInputDecoration('Product Name'),

                    onChanged: (InputValue) {
                      InputOnChange("ProductName", InputValue);
                    },

                  ),




                  const SizedBox(height: 20),




                  TextFormField(
                    initialValue: FormValues['ProductCode'],
                    decoration: AppInputDecoration('Product Code'),

                   onChanged: (InputValue) {
                      InputOnChange("ProductCode", InputValue);
                    },

                  ),




                  const SizedBox(height: 20),




                  TextFormField(
                    initialValue: FormValues['Img'],
                    decoration: AppInputDecoration('Product Image URL'),
                  
                    onChanged: (InputValue) {
                      InputOnChange("Img", InputValue);
                    },
                    
                  ),




                  const SizedBox(height: 20),





                  TextFormField(
                    initialValue: FormValues['UnitPrice'],
                    decoration: AppInputDecoration('Unit Price'),
                    keyboardType: TextInputType.number,
                   
                   onChanged: (InputValue) {
                      InputOnChange("UnitPrice", InputValue);
                    },

                  ),




                  const SizedBox(height: 20),




                  TextFormField(
                    initialValue: FormValues['TotalPrice'],
                    decoration: AppInputDecoration('Total Price'),
                    keyboardType: TextInputType.number,
                       
                   onChanged: (InputValue) {
                      InputOnChange("TotalPrice", InputValue);
                    },


                  ),




                  const SizedBox(height: 20),


                  AppDrropDownStyle(
                    DropdownButton(
                      value: FormValues['Qty'],
                      items: const [
                        DropdownMenuItem(child: Text('Select Qt'), value: 'Select Qt'),
                        DropdownMenuItem(child: Text('1 pcs'), value: '1 pcs'),
                        DropdownMenuItem(child: Text('2 pcs'), value: '2 pcs'),
                        DropdownMenuItem(child: Text('3 pcs'), value: '3 pcs'),
                        DropdownMenuItem(child: Text('4 pcs'), value: '4 pcs'),
                      ],
            
                      onChanged: (InputValue) {
                          InputOnChange("Qty", InputValue);
                        },


                      underline: Container(),
                      isExpanded: true,
                    ),
                  ),




                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: AppButtonStyle(),
                    onPressed: () {
                      FormOnSubmit();
                    },
                    child: SuccessButtonChild('Update'),
                  ),
                ],
              ),
            ),

            
            


          ),
        ],
      ),
    );
  }
}