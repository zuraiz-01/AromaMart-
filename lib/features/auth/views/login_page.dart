import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/auth_text_field.dart';
import '../../../app/widgets/primary_button.dart';
import '../controllers/auth_controller.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 6, 20, 26),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: isDark
                        ? const [Color(0xFF2A3342), Color(0xFF1E2430)]
                        : const [Color(0xFF2F394A), Color(0xFF151A22)],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: Get.back,
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      label: const Text('BACK'),
                      icon: const Icon(Icons.chevron_left, size: 18),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Log into\nyour account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.w900,
                        height: 1.1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 28, 20, 20),
                child: Column(
                  children: [
                    AuthTextField(
                      label: 'Email',
                      controller: controller.emailController,
                    ),
                    const SizedBox(height: 18),
                    AuthTextField(
                      label: 'Password',
                      controller: controller.passwordController,
                      obscureText: true,
                      suffix: TextButton(
                        onPressed: () => Get.toNamed(Routes.forgotPassword),
                        child: const Text('Forgot?'),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Obx(
                      () => CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        title: const Text(
                          'Remember me',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        value: controller.rememberMe.value,
                        onChanged: (value) =>
                            controller.rememberMe.value = value ?? false,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    const SizedBox(height: 12),
                    PrimaryButton(
                      label: 'Sign in',
                      onPressed: controller.signIn,
                    ),
                    const SizedBox(height: 10),
                    PrimaryButton(
                      label: 'Sign in with Facebook',
                      icon: Icons.facebook,
                      outlined: isDark,
                      onPressed: controller.signIn,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
