import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/auth_text_field.dart';
import '../../../app/widgets/primary_button.dart';
import '../controllers/auth_controller.dart';

class SignupPage extends GetView<AuthController> {
  const SignupPage({super.key});

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
                      'Create your\naccount',
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
                      label: 'Name',
                      controller: controller.nameController,
                    ),
                    const SizedBox(height: 18),
                    AuthTextField(
                      label: 'Email',
                      controller: controller.emailController,
                    ),
                    const SizedBox(height: 18),
                    AuthTextField(
                      label: 'Password',
                      controller: controller.passwordController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 14),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: true,
                      onChanged: (_) {},
                      title: const Text(
                        'You agree the terms and privacy policy',
                        style: TextStyle(fontSize: 13),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    const SizedBox(height: 12),
                    PrimaryButton(
                      label: 'Sign up',
                      onPressed: controller.signUp,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'OR',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    PrimaryButton(
                      label: 'Sign up with Facebook',
                      icon: Icons.facebook,
                      outlined: isDark,
                      onPressed: controller.signUp,
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
