import 'package:crud/RestAPI/RestClient.dart';
import 'package:crud/Style/Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductGridViewScreen extends StatefulWidget {
  const ProductGridViewScreen({super.key});

  @override
  State<ProductGridViewScreen> createState() => _ProductGridViewScreenState();
}


class _ProductGridViewScreenState extends State<ProductGridViewScreen> {
 
    List ProductList = [];

    bool Loading = true;
    

    // সর্বপ্রথম initState কল হবে। তাহলে সকল ডাটা প্রথমে এ স্টোর হয়ে যাবে। 
    @override
    void initState(){
        super.initState(); // super.initState() দিয়ে প্রথমে সুপার ক্লাসের initState কল হবে।
        CallData();

    }

    CallData () async {
    
        Loading = true;

        var data = await ProductListAll();

        setState(() {

            ProductList = data;
            Loading = false;


        });


    }
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
            title: const Text("List Product "),
        ),

        body: Stack(
            children: [

                ScreenBackground(context),

                Container(

                    child: Loading ? const Center(child: CircularProgressIndicator(),) : 

                    GridView.builder(

                        itemCount: ProductList.length,
                        gridDelegate: ProductGridViewStyle(), 
                        itemBuilder: (context, index){
                            
                            return Card(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,

                                    children: [
                                        Expanded(
                                            child: Image.network(ProductList[index]['Img'], fit: BoxFit.cover,),
                                        ),
                                        Container(
                                            padding: const EdgeInsets.fromLTRB(5,5,5,5),
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Text(ProductList[index]['ProductName'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                                    const SizedBox(height: 7,),
                                                    Text("Price: "+  ProductList[index]['UnitPrice'] + "BDT", style: const TextStyle(fontSize: 16, color: Colors.green),),
                                                    Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                            OutlinedButton(onPressed: (){}, child: Icon(CupertinoIcons.eye, size: 18, color: colorGreen,)),
                                                            OutlinedButton(onPressed: (){}, child: Icon(CupertinoIcons.pencil, size: 18, color: colorGreen,)),
                                                            OutlinedButton(onPressed: (){}, child: Icon(CupertinoIcons.delete, size: 18, color: colorRed,)),
                                                        ],
                                                    ),
                                                ],
                                            ),
                                        )
                                    ],


                                )

                            );


                        }


                    )


                ),


            ],
        ),

    );
  }
}