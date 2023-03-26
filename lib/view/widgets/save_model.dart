import 'document.dart';
import 'package:flutter/material.dart';

class SaveModel extends ChangeNotifier {
  final 
  List<Document> userSave = [
    Document(
      nameDocument: "Tài liệu hệ thống nhúng",
      price: "40000đ",
      image: "assets/images/photos/image_document.png",
      school: "Trường ĐH Công Nghệ Thông Tin",
      describe: "Tài liệu này gồm 400 trang mình mới in hôm qua nên...",
      name: "Thị Na",
      avatar: "assets/images/photos/avatar.png",
      address: "Thành phố thủ đức",
      time: "25 phút trước",
    ),
    Document(
      nameDocument: "Tài liệu quản trị mạng",
      price: "50000đ",
      image: "assets/images/photos/image_document.png",
      school: "Trường ĐH Tự nhiên",
      describe: "Tài liệu này gồm 500 trang mình mới in hôm qua nên...",
      name: "Thị Bưởi",
      avatar: "assets/images/photos/avatar.png",
      address: "Thành phố Gò vấp",
      time: "35 phút trước",
    ),
    Document(
      nameDocument: "Tài liệu an toàn mạng",
      price: "60000đ",
      image: "assets/images/photos/image_document.png",
      school: "Trường ĐH Bách Khoa",
      describe: "Tài liệu này gồm 600 trang mình mới in hôm qua nên...",
      name: "Thị Đào",
      avatar: "assets/images/photos/avatar.png",
      address: "Thành phố quận 1",
      time: "45 phút trước",
    ),
  ];

 

  List<Document> getUserSave() {
    return userSave;
  }

  void addItemToCart(Document document) {
    userSave.add(document);
    notifyListeners();
  }

  void removeItemFromCart(Document document) {
    userSave.remove(document);
    notifyListeners();
  }

  void removeallItemFromCart(Document document) {
    userSave.clear();
    notifyListeners();
  }
}
