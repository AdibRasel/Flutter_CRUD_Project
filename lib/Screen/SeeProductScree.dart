import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seeproductscree extends StatefulWidget {
  final Map ProductItem;
  const Seeproductscree(this.ProductItem, {Key? key}) : super(key: key);

  @override
  State<Seeproductscree> createState() => _SeeproductscreeState();
}

class _SeeproductscreeState extends State<Seeproductscree> {
  Map<String, String> FormValues = {
    "Img": "",
    "ProductCode": "",
    "ProductName": "",
    "Qty": "",
    "TotalPrice": "",
    "UnitPrice": ""
  };

  bool Loading = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      FormValues.update("Img", (value) => widget.ProductItem['Img']);
      FormValues.update("ProductCode", (value) => widget.ProductItem['ProductCode']);
      FormValues.update("ProductName", (value) => widget.ProductItem['ProductName']);
      FormValues.update("Qty", (value) => widget.ProductItem['Qty']);
      FormValues.update("TotalPrice", (value) => widget.ProductItem['TotalPrice']);
      FormValues.update("UnitPrice", (value) => widget.ProductItem['UnitPrice']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.ProductItem["ProductName"]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Product Image
            widget.ProductItem['Img'] != null && widget.ProductItem['Img'].isNotEmpty
                ? Image.network(widget.ProductItem['Img']!, height: 200, fit: BoxFit.cover)
                : Container(
                    height: 200,
                    color: Colors.grey[300],
                    child: Icon(Icons.image, size: 50, color: Colors.white),
                  ),

            // Product Name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Product Name: ${FormValues['ProductName']}",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            // Product Code
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Product Code: ${FormValues['ProductCode']}",
                style: TextStyle(fontSize: 18),
              ),
            ),

            // Quantity
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Quantity: ${FormValues['Qty']}",
                style: TextStyle(fontSize: 18),
              ),
            ),

            // Unit Price
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Unit Price: ${FormValues['UnitPrice']}",
                style: TextStyle(fontSize: 18),
              ),
            ),

            // Total Price
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Total Price: ${FormValues['TotalPrice']}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // Buttons or Actions Section (Optional)
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your functionality here
                  },
                  child: Text("Add to Cart"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your functionality here
                  },
                  child: Text("Buy Now"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
