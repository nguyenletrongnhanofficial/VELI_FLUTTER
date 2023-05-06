import 'package:flutter/material.dart';
import 'package:veli_flutter/view/save_view/views/bottomsheet_save.dart';
import 'package:veli_flutter/view/widgets/document.dart';

class DocumentTileSave extends StatelessWidget {
  Document document;
  DocumentTileSave({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return BottomSheetSave(document: document);
            });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        height: 170,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 5,
                  ),
                  height: 120,
                  width: 140,
                  child: Image.asset(document.image),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      document.nameDocument,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      document.price,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      document.school,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 150,
                      child: Text(
                        document.describe,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  maxRadius: 12,
                  minRadius: 12,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage(document.avatar),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  document.name,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 15),
                Text(
                  document.address,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 15),
                Text(
                  document.time,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
