
class Product{
  String? product_group;
  String? product_class;
  String? item_code;
  String? product_name;
  String? vendor_name;
  String? mrp;
  String? barcode;

  Product({
    this.product_group = "",
    this.product_class="",
    this.item_code="",
    this.product_name="",
    this.vendor_name="",
    this.mrp="",
    this.barcode=""

    });




  factory Product.fromJson(Map< String, dynamic> json){
    return Product(
        product_group: json['product_group'],
        product_class: json['product_class'],
        item_code: json['item_code'],
        product_name: json['product_name'],
        vendor_name: json['vendor_name'],
        mrp: json['mrp'],
        barcode: json['barcode']
    );
  }
}