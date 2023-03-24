import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddPostController extends GetxController {

  RxList<String> listOfImage = <String>[].obs;
  int maxImage = 5;
  Future<void> handlePickImages(BuildContext context) async {
    ImagePicker picker = ImagePicker();
    if (listOfImage.length >= maxImage) {
      showAlertDialog(context);
      return;
    }
    List<XFile>? images = await picker.pickMultiImage();

    if (images.isNotEmpty) {
      for (XFile image in images) {
        if(listOfImage.length <=  maxImage) {
          listOfImage.add(image.path);
        }
      }
    }
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Chỉ được thêm tối đa 5 ảnh'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  
  void handleDelete(int index){
    listOfImage.removeAt(index);
  }

  var titleController = TextEditingController();
  var descriptionController = TextEditingController();
  var priceController = TextEditingController();
  var universityController = TextEditingController();
  var addressController = TextEditingController();
}
