class productModel {
  String? sId;
  String? productGroup;
  String? productClass;
  String? itemCode;
  String? productName;
  String? vendorName;
  String? mrp;
  String? barcode;
  String? createAt;
  bool? status;
  String? imagelink;
  int? iV;
  String? createdAt;
  String? updatedAt;

  productModel(
      {this.sId,
        this.productGroup,
        this.productClass,
        this.itemCode,
        this.productName,
        this.vendorName,
        this.mrp,
        this.barcode,
        this.createAt,
        this.status,
        this.imagelink,
        this.iV,
        this.createdAt,
        this.updatedAt});

  productModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    productGroup = json['product_group'];
    productClass = json['product_class'];
    itemCode = json['item_code'];
    productName = json['product_name'];
    vendorName = json['vendor_name'];
    mrp = json['mrp'];
    barcode = json['barcode'];
    createAt = json['create_at'];
    status = json['status'];
    imagelink = json['imagelink'];
    iV = json['__v'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['product_group'] = this.productGroup;
    data['product_class'] = this.productClass;
    data['item_code'] = this.itemCode;
    data['product_name'] = this.productName;
    data['vendor_name'] = this.vendorName;
    data['mrp'] = this.mrp;
    data['barcode'] = this.barcode;
    data['create_at'] = this.createAt;
    data['status'] = this.status;
    data['imagelink'] = this.imagelink;
    data['__v'] = this.iV;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
