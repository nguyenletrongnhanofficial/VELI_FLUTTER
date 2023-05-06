import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veli_flutter/view/widgets/document.dart';
import 'package:veli_flutter/view/widgets/save_model.dart';

import 'document_tile_save.dart';

class SaveView extends StatefulWidget {
  const SaveView({super.key});

  @override
  State<SaveView> createState() => _SaveViewState();
}

class _SaveViewState extends State<SaveView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 238, 238, 238),
        body: Consumer<SaveModel>(
      builder: (context, value, child) => Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.07,
            child: Stack(
              children: [
                Positioned(
                  left: size.width * 0.45,
                  top: 15,
                  child: const Text(
                    'LƯU',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 17,
                  right: 0,
                  child: TextButton(
                    onPressed: () {}, 
                    child: const Text(
                      'Xóa tất cả',
                      style: TextStyle(fontSize: 10, color: Colors.orange),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
             itemCount: value.getUserSave().length,
              itemBuilder: (context, index) {
                Document document = value.getUserSave()[index];
                return DocumentTileSave(
                  document: document,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}