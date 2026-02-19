import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';

class AuthController extends GetxController {
  final nameController = TextEditingController(text: 'Cassie Donk');
  final emailController = TextEditingController(text: 'hello@ui-shop.com');
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final RxBool rememberMe = true.obs;
  final RxString selectedGender = 'Women'.obs;

  void signIn() {
    Get.offAllNamed(Routes.home);
  }

  void signUp() {
    Get.offAllNamed(Routes.home);
  }

  void forgotPassword() {
    Get.toNamed(Routes.resetPassword);
  }

  void resetPassword() {
    Get.toNamed(Routes.passwordResetSuccess);
  }

  void startShopping() {
    Get.offAllNamed(Routes.home);
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
