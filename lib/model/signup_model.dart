class SignupModel {
  String name;
  String phone;
  String password;
  //String uid;


  SignupModel({
    required this.name,
    required this.phone,
    required this.password,
    //required this.uid
  });

  @override
  String toString() {
    return 'SignupModel{name: $name, phone: $phone, password: $password}';
  }

  factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        name: json['name'],
        phone: json['phone'],
        password: json['password'],
        //uid: json['uid'],
    );


  Map<String,dynamic>toJson(){
      return {
        'name': name,
        'phone': phone,
        'password': password,
        //'uid': uid,
      };
    }
}