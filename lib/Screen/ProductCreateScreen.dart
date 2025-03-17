import 'package:crud/Style/Style.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
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
            child: (SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [

                  TextFormField( 

                    onChanged: (value){},
                    decoration: AppInputDecoration('Product Name'),

                  ),


                  SizedBox(height: 20,),


                  TextFormField( 

                    onChanged: (value){},
                    decoration: AppInputDecoration('Product Code'),

                  ),


                  SizedBox(height: 20,),



                  TextFormField( 

                    onChanged: (value){},
                    decoration: AppInputDecoration('Product Image'),

                  ),


                  SizedBox(height: 20,),



                  TextFormField( 

                    onChanged: (value){},
                    decoration: AppInputDecoration('Unit Price'),

                  ),



                  SizedBox(height: 20,),


                  TextFormField( 

                    onChanged: (value){},
                    decoration: AppInputDecoration('Total Prcie'),

                  ),





                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}