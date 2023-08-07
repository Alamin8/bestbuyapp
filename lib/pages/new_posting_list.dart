import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/product.dart';

class NewPostingList extends StatefulWidget {
  const NewPostingList({Key? key}) : super(key: key);

  @override
  State<NewPostingList> createState() => _NewPostingListState();
}








class _NewPostingListState extends State<NewPostingList> {

  List<Product> allProducts = [];
  Future<void> readJsonFile() async {
    final String response = await rootBundle.loadString('assets/products.json');
    final productData = await json.decode(response);

    var list = productData["products"] as List<dynamic>;


    setState((){
      allProducts= list.map((e) => Product.fromJson(e)).toList();
    });


  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
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
                            onTap: readJsonFile,
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
                    child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          if (allProducts.length > 0)
                            SizedBox(
                              height: 1000,
                              child: Expanded(
                                  child: ListView.builder(
                                      itemCount: allProducts.length,
                                      itemBuilder: (BuildContext context, index) {
                                        return ListTile(
                                            onTap: () {},

                                            title: Row(
                                              children: [
                                                //Flexible(
                                                   // child: new Text(allProducts[.product_name)),
                                              ],
                                            ),
                                            subtitle: Row(
                                              children: [
                                                Text("Barcode:"),
                                                //Text(allProducts[index].barcode),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text("MRP:"),
                                                //Text(allProducts[index].mrp)
                                              ],
                                            ),
                                            trailing: Icon(Icons
                                                .arrow_forward_ios_outlined));
                                      })),
                            )
                          else
                            Container(child: Text("No product found"),)












                          //   Container(
                          //     decoration: BoxDecoration(
                          //         color: Color(0xffC7C0E7),
                          //         borderRadius: BorderRadius.circular(8)),
                          //     child: ListTile(
                          //       onTap: () {},
                          //       leading: (ClipRRect(
                          //         borderRadius: BorderRadius.circular(8.0),
                          //         child: Image.asset(
                          //           'assets/images/profile.png',
                          //           height: 60,
                          //           width: 60,
                          //           fit: BoxFit.cover,
                          //         ),
                          //       )),
                          //       title: Row(
                          //         children: [
                          //           Flexible(
                          //               child: new Text(
                          //                   "This is product Name. I can see it")),
                          //         ],
                          //       ),
                          //       subtitle: Row(
                          //         children: [
                          //           Text("Stock : 125"),
                          //           SizedBox(
                          //             width: 10,
                          //           ),
                          //           Text("MRP : 12550"),
                          //         ],
                          //       ),
                          //       trailing:
                          //           Icon(Icons.arrow_forward_ios_outlined),
                          //     ),
                          //   ),
                          // SizedBox(
                          //   height: 7,
                          // ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       color: Color(0xffC7C0E7),
                          //       borderRadius: BorderRadius.circular(8)),
                          //   child: ListTile(
                          //     onTap: () {},
                          //     leading: (ClipRRect(
                          //       borderRadius: BorderRadius.circular(8.0),
                          //       child: Image.asset(
                          //         'assets/images/profile.png',
                          //         height: 60,
                          //         width: 60,
                          //         fit: BoxFit.cover,
                          //       ),
                          //     )),
                          //     title: Row(
                          //       children: [
                          //         Flexible(
                          //             child: new Text(
                          //                 "This is product Name. I can see it")),
                          //       ],
                          //     ),
                          //     subtitle: Row(
                          //       children: [
                          //         Text("Stock : 125"),
                          //         SizedBox(
                          //           width: 10,
                          //         ),
                          //         Text("MRP : 12550"),
                          //       ],
                          //     ),
                          //     trailing: Icon(Icons.arrow_forward_ios_outlined),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 7,
                          // ),














                         , SizedBox(
                            height: 7,
                          ),
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
