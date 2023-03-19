import 'package:flutter/material.dart';

class logo_screen extends StatelessWidget {
  const logo_screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container (
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xFF0EBF7E)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/image_Logo.png', height: 60,width: 60),
                const Text('Veli', style: TextStyle(color: Colors.white,fontSize: 26))
              ],
            ),
          )
      ),
    );
  }
}