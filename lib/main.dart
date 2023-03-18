import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Chúc nhóm mình làm việc vui vẻ và hiệu quả nha 😇😇',
            style: const TextStyle(
              fontSize: 12,
              fontFamily: "Veli_SemiBold",
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
