import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veli_flutter/view/widgets/document.dart';
import 'package:veli_flutter/view/widgets/save_model.dart';

class BottomSheetSave extends StatefulWidget {
  Document document;
  BottomSheetSave({super.key, required this.document});


  @override
  State<BottomSheetSave> createState() => _BottomSheetSaveState();
}

class _BottomSheetSaveState extends State<BottomSheetSave> {
  void removeItem() {
    Provider.of<SaveModel>(context, listen: false)
        .removeItemFromCart(widget.document);
  }
  void removeAllItem() {
    Provider.of<SaveModel>(context, listen: false).removeallItemFromCart(widget.document);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5,
            width: 50,
            decoration: BoxDecoration(
                color: const Color(0xFF5B5858),
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              removeItem();
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              primary: Color.fromARGB(255, 248, 248, 248),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/photos/iconDelete.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Xóa',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: removeAllItem,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              primary: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/photos/death.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Xóa hết',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 50),
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/photos/iconSent.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Gửi tin nhắn',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
          ),
          
        ],
      ),
    );;
  }
}