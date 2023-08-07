



class UserModel {
  int? status;
  String? msg;
  String? accesstoken;

  UserModel({this.status, this.msg, this.accesstoken});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    accesstoken = json['accesstoken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    data['accesstoken'] = this.accesstoken;
    return data;
  }
}
