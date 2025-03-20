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
  void initState() {
    super
        .initState(); // super.initState() দিয়ে প্রথমে সুপার ক্লাসের initState কল হবে।
    CallData();
  }

  CallData() async {
    Loading = true;

    var data = await ProductListAll();

    setState(() {
      ProductList = data;
      Loading = false;
    });
  }

  DeleteItem(id) async {
    // Loading = true;

    // var data = await ProductDeleteRequest(id);

    // if (data) {
    //   SuccessToast("Product Deleted Successfully");
    // } else {
    //   ErrorToast("Product Delete Failed");
    // }

    // CallData();

    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete Product"),
          content: const Text("Are you sure to delete this product?"),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            OutlinedButton(
              onPressed: () async {

                setState(() {
                  Loading = false;
                });
                var data = await ProductDeleteRequest(id);

                if (data) {
                Navigator.pop(context);
                CallData();
                setState(() {
                  Loading = false;
                });
                  // SuccessToast("Product Deleted Successfully");
                } else {
                  // ErrorToast("Product Delete Failed");
                Navigator.pop(context);

                }

              },
              child: const Text("Delete"),
            ),
          ],
        );
      }
    );


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

              // Loading সত্য হলে লোডিং দেখাবে।
              child: Loading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  :
                  // লোডিং সত্য না হলে ডাটা দেখাবে নিম্নের কোড গুলো শো হবে।
                 

                // উপর থেকে নিচে রিপ্লেস করলে ডাটা লোড হবে। 
                  RefreshIndicator(

                    onRefresh: ()async{

                        await CallData();
                    
                    },


                    child:  


                    // এখন আবার উপর থেকে নিচে স্ক্রল করে ডাটা আসতে সময় লাগলে লোডিং দেখাবে। 
                    
                    Loading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  :
                    
                    GridView.builder(
                      itemCount: ProductList.length,
                      gridDelegate: ProductGridViewStyle(),
                      itemBuilder: (context, index) {
                        return Card(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                            child: InkWell(
                                onTap: () {
                                print("Image tapped!");
                                },
                                child: Container(
                                child: Image.network(
                                    ProductList[index]['Img'],
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                    return Icon(Icons.error, size: 50, color: Colors.red); // যদি লোড না হয়
                                    },
                                ),
                                ),
                            ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ProductList[index]['ProductName'],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Price: " +
                                        ProductList[index]['UnitPrice'] +
                                        "BDT",
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.green),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      
                                      OutlinedButton(
                                          onPressed: () {},
                                          child: Icon(
                                            CupertinoIcons.pencil,
                                            size: 18,
                                            color: colorGreen,
                                          )),
                                      OutlinedButton(
                                          onPressed: () {
                                            DeleteItem(ProductList[index]['_id']);
                                          },
                                          child: Icon(
                                            CupertinoIcons.delete,
                                            size: 18,
                                            color: colorRed,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ));
                      }),


                
                
                ),


                ),



                      
        ],
      ),
    );
  }
}
