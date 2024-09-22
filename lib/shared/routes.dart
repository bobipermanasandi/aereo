import 'package:aereo/ui/pages/success_checkout_page.dart';
import 'package:flutter/material.dart';

import '../ui/pages/get_started_page.dart';
import '../ui/pages/sign_up_page.dart';
import '../ui/pages/splash_page.dart';

const String routePage = '/';
const String getStartedPage = '/get-started';
const String signUpPage = '/auth/sign-up';

// const String bonusPage = '/bonus';
const String mainPage = '/main';
const String successCheckoutPage = '/success-checkout';

Map<String, WidgetBuilder> routes(BuildContext context) {
  return {
    routePage: (context) => const SplashPage(),
    getStartedPage: (context) => const GetStartedPage(),
    signUpPage: (context) => const SignUpPage(),
    successCheckoutPage: (context) => const SuccessCheckoutPage(),
  };
}
