import 'package:crud/RestAPI/RestClient.dart';
import 'package:crud/Utility/Utility.dart';
import 'package:flutter/material.dart';
import 'package:crud/Style/Style.dart';




class ProductUpdateScreen extends StatefulWidget {
  const ProductUpdateScreen({super.key});

  @override
  State<ProductUpdateScreen> createState() => _ProductUpdateScreenState();
}

class _ProductUpdateScreenState extends State<ProductUpdateScreen> {

 Map<String, String> FormValues={ "Img": "", "ProductCode": "", "ProductName": "",  "Qty": "",  "TotalPrice": "", "UnitPrice": "" };

  bool Loading = false; 


  
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
        
     await ProductCreateRequest(FormValues); // Product Update 
    
      setState((){
        Loading = false;
      });

    
    }



  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Product'),
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
                    decoration: AppInputDecoration('Product Name'),

                    onChanged: (InputValue) {
                      InputOnChange("ProductName", InputValue);
                    },

                  ),




                  const SizedBox(height: 20),




                  TextFormField(
                    decoration: AppInputDecoration('Product Code'),

                   onChanged: (InputValue) {
                      InputOnChange("ProductCode", InputValue);
                    },

                  ),




                  const SizedBox(height: 20),




                  TextFormField(
                    decoration: AppInputDecoration('Product Image URL'),
                  
                    onChanged: (InputValue) {
                      InputOnChange("Img", InputValue);
                    },
                    
                  ),




                  const SizedBox(height: 20),





                  TextFormField(
                    decoration: AppInputDecoration('Unit Price'),
                    keyboardType: TextInputType.number,
                   
                   onChanged: (InputValue) {
                      InputOnChange("UnitPrice", InputValue);
                    },

                  ),




                  const SizedBox(height: 20),




                  TextFormField(
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
                        DropdownMenuItem(child: Text('Select Qt'), value: ''),
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