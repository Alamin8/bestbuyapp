import 'package:best_buy/data/network/NetworkApiService.dart';
import 'package:best_buy/models/product.dart';
import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

import '../../data/network/BaseApiServices.dart';
import '../../res/app_url.dart';

class InventoryNewPosting extends StatefulWidget {
  const InventoryNewPosting({Key? key}) : super(key: key);

  @override
  State<InventoryNewPosting> createState() => _InventoryNewPostingState();
}

class _InventoryNewPostingState extends State<InventoryNewPosting> {
  var searchText ='';
  var barcodeText = '';



  @override
  Widget build(BuildContext context) {


    BaseApiServices _apiServices = NetworkApiService();
    print(barcodeText);


    var allFilterProducts = [];
    var filtersingleproduct;




     dynamic allproducts() async {
      try {
         List<Product> result = [];
         dynamic response = await _apiServices.getGetApiResponse(AppUrl.getMrpProductUrl);

         //result = response.map((e) => Product.fromJson(e)).toList();
         allFilterProducts = response;


         print(response);
        return allFilterProducts;

      } catch (e) {
        throw e;
      }
    }

    dynamic searchProducts() async {
      var queryTXT;


       queryTXT= searchText.toString();
       // var newProduct = [];

      try {
        Map data= {
          "searchText" : queryTXT,
        };
        print(data);

        dynamic response = await _apiServices.getPostApiResponse(AppUrl.getMrpSearchUrl, data);

        print(response.runtimeType);
        if(response is Map<String, dynamic>){
          filtersingleproduct = response;
          return filtersingleproduct;
        }else{
          allFilterProducts = response;
          return allFilterProducts;
        }


      } catch (e) {
        throw e;
      }
    }

// Barcode Scan Product
    dynamic barcodeScanProducts() async {
      var queryTXT;

      queryTXT= barcodeText.toString();

      try {
        Map data= {
          "searchText" : queryTXT,
        };
        print(data);

        dynamic response = await _apiServices.getPostApiResponse(AppUrl.getMrpSearchUrl, data);

        if(response is Map<String, dynamic>){
          filtersingleproduct = response;
          return filtersingleproduct;
        }else{
          allFilterProducts = response;
          return allFilterProducts;
        }


      } catch (e) {
        throw e;
      }
    }


    dynamic productSearchFilter(){
      if(searchText.isEmpty && barcodeText.isEmpty){
        return allproducts();
      }else if(barcodeText.isNotEmpty){
        return barcodeScanProducts();
      }else{
      return searchProducts();
      }
    }





    //print(allFilterProducts);

    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery
                  .of(context)
                  .size
                  .height,
              maxWidth: MediaQuery
                  .of(context)
                  .size
                  .width,
            ),
            decoration: const BoxDecoration(
              color: Color(0xffF8F8FF),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff6C60E0),
                    ),
                    child: Text(
                      "BBS Inventory - New Posting",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xfff4f3fd),
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 2),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 13,
                          child: TextField(
                            keyboardType: TextInputType.text,

                             onChanged: (e){
                              setState(() {
                                barcodeText='';
                                searchText = e;
                              });
                             },
                             // onChanged: ( val){
                             //   searchProduct(val);
                             // },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffE7E4FF), width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black12, width: 3.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xffE7E4FF),
                              hintText: "Product name or code..",
                            ),
                          ),

                        ),

                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 2,
                            child: InkWell(
                                onTap: () async {
                                  var res = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const SimpleBarcodeScannerPage(),
                                      ));
                                  setState(() {
                                    if (res is String) {
                                      searchText = '';
                                      barcodeText = res;

                                    }
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 14),
                                  decoration: BoxDecoration(
                                      color: Color(0xff6C60E0),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Icon(
                                    Icons.qr_code_scanner,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: FutureBuilder(
                        future: productSearchFilter(),
                        builder: (context, snapshot) {

                          //snapshot.connectionState == ConnectionState.waiting
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Color(0xff6C60E0),
                              strokeWidth: 5,
                            ),
                          );
                        } else if(allFilterProducts.length > 1) {
                          return ListView.builder(
                              itemCount: allFilterProducts.length,
                              itemBuilder: (BuildContext context, index) {

                                return Card(

                                  elevation: 3,
                                  color: Colors.green,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 10),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 0),
                                    child: ListTile(
                                        onTap: () {},
                                        title: Row(
                                          children: [
                                            Flexible(
                                              child: new Text(
                                                  allFilterProducts[index]['product_name']),
                                            )
                                          ],
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Text("Item code: "),
                                            Text(allFilterProducts[index]['item_code']),

                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("  MRP: "),
                                            Text(allFilterProducts[index]['mrp']),
                                            Text("Tk"),
                                          ],
                                        ),
                                        trailing:
                                        Icon(Icons.arrow_forward_ios_outlined)),
                                  ),
                                );
                              });
                        } else if(allFilterProducts == 0){
                          return Center(
                              child: Text("No data founds")
                          );
                        }else{
                          return Card(
                            elevation: 3,
                            color: Colors.green,
                            margin: EdgeInsets.symmetric(
                                vertical: 7, horizontal: 10),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: ListTile(
                                  onTap: () {},
                                  title: Row(
                                    children: [
                                      Flexible(
                                        child: new Text(
                                            filtersingleproduct['product_name']),
                                      )
                                    ],
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Text("Item code: "),
                                      Text(filtersingleproduct['item_code']),

                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("  MRP: "),
                                      Text(filtersingleproduct['mrp']),
                                      Text("Tk"),
                                    ],
                                  ),
                                  trailing:
                                  Icon(Icons.arrow_forward_ios_outlined)),
                            ),
                          );
                        };
                      },
                      )
                  )
                ]
            ),
          ),
        ),)
      ,
    );
  }

  // void scanBarcodeNormal () async{
  //    String barcodeScanRes;
  //    barcodeScanRes = await
  // }
}





























// if(allFilterProducts.length > 1) {
// return Card(
//
// elevation: 3,
// color: Colors.green,
// margin: EdgeInsets.symmetric(
// vertical: 7, horizontal: 10),
// child: Container(
// padding: EdgeInsets.symmetric(
// vertical: 0, horizontal: 0),
// child: ListTile(
// onTap: () {},
// title: Row(
// children: [
// Flexible(
// child: new Text(
// allFilterProducts[index]['product_name']),
// )
// ],
// ),
// subtitle: Row(
// children: [
// Text("Item code: "),
// Text(allFilterProducts[index]['item_code']),
//
// SizedBox(
// width: 10,
// ),
// Text("  MRP: "),
// Text(allFilterProducts[index]['mrp']),
// Text("Tk"),
// ],
// ),
// trailing:
// Icon(Icons.arrow_forward_ios_outlined)),
// ),
// );
// }else{
// return Card(
//
// elevation: 3,
// color: Colors.green,
// margin: EdgeInsets.symmetric(
// vertical: 7, horizontal: 10),
// child: Container(
// padding: EdgeInsets.symmetric(
// vertical: 0, horizontal: 0),
// child: ListTile(
// onTap: () {},
// title: Row(
// children: [
// Flexible(
// ),
// child: new Text(
// allFilterProducts[index]['product_name']),
// )
// ],
// subtitle: Row(
// children: [
// Text("Item code: "),
// Text(allFilterProducts[index]['item_code']),
//
// SizedBox(
// width: 10,
// ),
// Text("  MRP: "),
// Text(allFilterProducts[index]['mrp']),
// Text("Tk"),
// ],
// ),
// trailing:
// Icon(Icons.arrow_forward_ios_outlined)),
// ),
// );
// }
//
//























// else if(productName.toLowerCase().contains(searchController.text.toLowerCase())){
// return Card(
// elevation: 3,
// color: Colors.green,
// margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
// child: Container(
// padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
// child: ListTile(
// onTap: () {},
//
// title: Row(
//
// children: [
// Flexible(
// child: new Text(
// data[index]['product_name']),
// )],
// ),
// subtitle: Row(
// children: [
// Text("Item code: "),
// Text(data[index]['item_code']),
// // Text("barcode:"),
// // Text(data[index]['barcode']),
// SizedBox(
// width: 10,
// ),
// Text("    MRP: "),
// Text(data[index]['mrp']),
// Text("Tk"),
// ],
// ),
// trailing: Icon(Icons
//     .arrow_forward_ios_outlined)
// ),
// ),
// );
// }else if(itemcodeD.toLowerCase().contains(searchController.text.toLowerCase())){
// return Card(
// elevation: 3,
// color: Colors.green,
// margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
// child: Container(
// padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
// child: ListTile(
// onTap: () {},
//
// title: Row(
//
// children: [
// Flexible(
// child: new Text(
// data[index]['product_name']),
// )],
// ),
// subtitle: Row(
// children: [
// Text("Item code: "),
// Text(data[index]['item_code']),
// // Text("barcode:"),
// // Text(data[index]['barcode']),
// SizedBox(
// width: 10,
// ),
// Text("    MRP: "),
// Text(data[index]['mrp']),
// Text("Tk"),
// ],
// ),
// trailing: Icon(Icons
//     .arrow_forward_ios_outlined)
// ),
// ),
// );
// }

//
// FutureBuilder
// (
// future: products
// (
// ),builder: (
// context, snapshot) {
// if (snapshot.connectionState == ConnectionState.waiting) {
// return Center(
// child: CircularProgressIndicator(
// backgroundColor: Color(0xff6C60E0),
// strokeWidth: 5,
// ),
// );
// } else {
// return ListView.builder(
// itemCount: data.length,
// itemBuilder: (BuildContext context, index) {
// late String productName =
// data[index]['product_name'].toString();
// late String barcodeD =
// data[index]['barcode'].toString();
// late String itemcodeD =
// data[index]['item_code'].toString();
//
// return Card(
// elevation: 3,
// color: Colors.green,
// margin: EdgeInsets.symmetric(
// vertical: 7, horizontal: 10),
// child: Container(
// padding: EdgeInsets.symmetric(
// vertical: 0, horizontal: 0),
// child: ListTile(
// onTap: () {},
// title: Row(
// children: [
// Flexible(
// child: new Text(
// data[index]['product_name']),
// )
// ],
// ),
// subtitle: Row(
// children: [
// Text("Item code: "),
// Text(data[index]['item_code']),
// // Text("barcode:"),
// // Text(data[index]['barcode']),
// SizedBox(
// width: 10,
// ),
// Text("    MRP: "),
// Text(data[index]['mrp']),
// Text("Tk"),
// ],
// ),
// trailing:
// Icon(Icons.arrow_forward_ios_outlined)),
// ),
// );
// });
// }
// ;
// },
// )
// )