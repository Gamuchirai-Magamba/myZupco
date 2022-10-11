// ignore: file_names
class UserModel {
  String? uid;

  String? email;
  String? role;

  UserModel({this.uid,  this.email, this.role});


  UserModel.fromMap(map) {
    uid = map["uid"];
    email = map["email"];
    role = map["role"];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "email": email,
      "role": role,
    };
  }
}