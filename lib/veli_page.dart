import 'package:get/get.dart';
import 'package:veli_flutter/veli_navigation.dart';
import 'package:veli_flutter/view/description_view/description_view.dart';
import 'package:veli_flutter/view/forgot_view/forgot_view.dart';
import 'package:veli_flutter/view/login_view/login_view.dart';
import 'package:veli_flutter/view/onboarding_view/onboarding_view.dart';
import 'package:veli_flutter/view/otp_view/otv_view.dart';
import 'package:veli_flutter/view/signup_view/signup_view.dart';
import 'package:veli_flutter/view/splash_view/splash_view.dart';
import 'package:veli_flutter/view/success_view/success_view.dart';

class VeliPage {
  static final pages = [
    GetPage(
      name: VeliNavigation.descriptionView,
      page: () => const DescriptionView(),
    ),
    GetPage(
        name: VeliNavigation.onboardingView,
        page: () => const OnboardingView()
    ),
    GetPage(
        name: VeliNavigation.splashView,
        page: () => const SplashView()
    ),
    GetPage(
        name: VeliNavigation.loginView,
        page: () => const LoginView()
    ),
    GetPage(
        name: VeliNavigation.signupView,
        page: () => const SignupView()
    ),
    GetPage(
        name: VeliNavigation.successView,
        page: () => const SuccessView()
    ),
    GetPage(
        name: VeliNavigation.forgotView,
        page: () => const ForgotView()
    ),
    GetPage(
        name: VeliNavigation.otpView,
        page: () => const OtpView()
    )
  ];
}
