import 'package:flutter/material.dart';
import 'package:crud/Style/Style.dart';

class ProductCreateScreen extends StatefulWidget {
  @override
  _ProductCreateScreenState createState() => _ProductCreateScreenState();
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
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [



                  
                  TextFormField(
                    decoration: AppInputDecoration('Product Name'),
                    onSaved: (value) {
                    },
                  ),




                  const SizedBox(height: 20),




                  TextFormField(
                    decoration: AppInputDecoration('Product Code'),
                    onSaved: (value) {
                    },
                  ),




                  const SizedBox(height: 20),




                  TextFormField(
                    decoration: AppInputDecoration('Product Image URL'),
                    onSaved: (value) {
                    },
                  ),




                  const SizedBox(height: 20),





                  TextFormField(
                    decoration: AppInputDecoration('Unit Price'),
                    keyboardType: TextInputType.number,
                   
                    onSaved: (value) {
                    },
                  ),




                  const SizedBox(height: 20),




                  TextFormField(
                    decoration: AppInputDecoration('Total Price'),
                    keyboardType: TextInputType.number,
                   
                    onSaved: (value) {
                    },
                  ),




                  const SizedBox(height: 20),


                  AppDrropDownStyle(
                    DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(child: Text('Select Qt'), value: ''),
                        DropdownMenuItem(child: Text('1 pcs'), value: '1 pcs'),
                        DropdownMenuItem(child: Text('2 pcs'), value: '2 pcs'),
                        DropdownMenuItem(child: Text('3 pcs'), value: '3 pcs'),
                        DropdownMenuItem(child: Text('4 pcs'), value: '4 pcs'),
                      ],

                      onChanged: (value) {
                      },
                     
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),




                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: AppButtonStyle(),
                    onPressed: () {
                    },
                    child: SuccessButtonChild('Submit'),
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