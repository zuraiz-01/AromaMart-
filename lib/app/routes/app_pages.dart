import 'package:get/get.dart';

import '../../features/auth/views/forgot_password_page.dart';
import '../../features/auth/views/login_page.dart';
import '../../features/auth/views/password_reset_success_page.dart';
import '../../features/auth/views/reset_password_page.dart';
import '../../features/auth/views/signup_page.dart';
import '../../features/auth/views/welcome_page.dart';
import '../../features/home/views/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = <GetPage<dynamic>>[
    GetPage(name: Routes.welcome, page: () => const WelcomePage()),
    GetPage(name: Routes.login, page: () => const LoginPage()),
    GetPage(name: Routes.signup, page: () => const SignupPage()),
    GetPage(
      name: Routes.forgotPassword,
      page: () => const ForgotPasswordPage(),
    ),
    GetPage(name: Routes.resetPassword, page: () => const ResetPasswordPage()),
    GetPage(
      name: Routes.passwordResetSuccess,
      page: () => const PasswordResetSuccessPage(),
    ),
    GetPage(name: Routes.home, page: () => const HomePage()),
  ];
}
