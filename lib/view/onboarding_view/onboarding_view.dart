import 'dart:async';

import 'package:flutter/material.dart';
import 'package:veli_flutter/utils/image_utils.dart';
import 'package:veli_flutter/view/splash_view/splash_view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  void initState (BuildContext context) {
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
          const SplashView()));
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(color: Color(0xFF0EBF7E)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Image(
                  height: 60,
                  width: 60,
                  image: AssetImage(ImageUtils.imageOnboading),
                ),
                Text('Veli',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: 'assets/fonts/Veli_SemiBold.ttf'))
              ],
            )),
      ),
    );
  }
}
