class AccountModel {
  String email;
  String name;
  String image;
  String date;
  String uid;

  AccountModel({
    required this.email,
    required this.name,
    required this.image,
    required this.date,
    required this.uid,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return AccountModel(
      email: json['email'],
      name: json['name'],
      image: json['image'],
      date: json['date'],
      uid: json['uid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
      'image': image,
      'date': date,
      'uid': uid,
    };
  }
}