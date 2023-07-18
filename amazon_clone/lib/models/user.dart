import 'dart:convert';

class User {
  String? name;
  String? email;
  String? password;
  String? address;
  String? type;
  String? sId;
  String? token;

  User(
      {this.name,
      this.email,
      this.password,
      this.address,
      this.type,
      this.sId,
      this.token});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    address = json['address'];
    type = json['type'];
    sId = json['_id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['address'] = this.address;
    data['type'] = this.type;
    data['_id'] = this.sId;
    data['token'] = this.token;
    return data;
  }
}