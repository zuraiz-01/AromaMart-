import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/auth_text_field.dart';
import '../../../app/widgets/primary_button.dart';
import '../controllers/auth_controller.dart';

class ForgotPasswordPage extends GetView<AuthController> {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(Icons.chevron_left),
        ),
        title: const Text(
          'BACK',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Forgot password?',
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.w900,
                height: 1.1,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Please enter your email address and we\nwill send your password by email immediately.',
              style: TextStyle(
                color: Theme.of(
                  context,
                ).textTheme.bodyMedium?.color?.withValues(alpha: 0.72),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 28),
            AuthTextField(
              label: 'Email',
              controller: controller.emailController,
            ),
            const SizedBox(height: 20),
            PrimaryButton(label: 'Send', onPressed: controller.forgotPassword),
          ],
        ),
      ),
    );
  }
}
