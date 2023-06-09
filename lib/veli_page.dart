import 'package:get/get.dart';
import 'package:veli_flutter/veli_navigation.dart';
import 'package:veli_flutter/view/add_post_view/add_post_view.dart';
import 'package:veli_flutter/view/chat_view/chat_view.dart';
import 'package:veli_flutter/view/description_view/description_view.dart';
import 'package:veli_flutter/view/filter_view/filter_view.dart';
import 'package:veli_flutter/view/home_view/home_view.dart';
import 'package:veli_flutter/view/login_view/login_view.dart';
import 'package:veli_flutter/view/manage_view/views/manage_view.dart';
import 'package:veli_flutter/view/message_view/message_view.dart';
import 'package:veli_flutter/view/nomessage_view/views/nomessage_view.dart';
import 'package:veli_flutter/view/nosave_view/views/nosave_view.dart';
import 'package:veli_flutter/view/onboarding_view/onboarding_view.dart';
import 'package:veli_flutter/view/otp_view/otp_view.dart';
import 'package:veli_flutter/view/profile_view/views/profile_view.dart';
import 'package:veli_flutter/view/save_view/views/save_view.dart';
import 'package:veli_flutter/view/signup_view/signup_view.dart';
import 'package:veli_flutter/view/splash_view/splash_view.dart';

class VeliPage {
  static final pages = [
    GetPage(
      name: VeliNavigation.descriptionView,
      page: () => const DescriptionView(),
    ),
    GetPage(
      name: VeliNavigation.profileView,
      page: () => const ProfileView(),
    ),
    GetPage(
      name: VeliNavigation.saveView,
      page: () => const SaveView(),
    ),
    GetPage(
      name: VeliNavigation.addPostView,
      page: () => const AddPostView(),
    ),
    GetPage(
      name: VeliNavigation.filterView,
      page: () => const FilterView(),
    ),
    GetPage(
      name: VeliNavigation.messageView,
      page: () => const MessageView(),
    ),
    GetPage(
      name: VeliNavigation.chatView,
      page: () => const ChatView(),
    ),

    GetPage(
      name: VeliNavigation.onboardingView,
      page: () => const OnboardingView(),
    ),

    GetPage(
      name: VeliNavigation.splashView,
      page: () => const SplashView(),
    ),

    GetPage(
      name: VeliNavigation.loginView,
      page: () => const LoginView(),
    ),

    GetPage(
      name: VeliNavigation.signupView,
      page: () => SignupView(),
    ),

    GetPage(
      name: VeliNavigation.otpView,
      page: () => const OtpView(),
    ),

    GetPage(
      name: VeliNavigation.manageView,
      page: () => const ManageView(),
    ),

    GetPage(
      name: VeliNavigation.nomessageView,
      page: () => const NoMessageView(),
    ),

    GetPage(
      name: VeliNavigation.nosaveView,
      page: () => const NoSaveView(),
    ), 

    GetPage(
      name: VeliNavigation.homeView,
      page: () => const HomeView(),
    ),
  ];
}
