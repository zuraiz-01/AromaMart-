import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/auth_text_field.dart';
import '../../../app/widgets/primary_button.dart';
import '../controllers/auth_controller.dart';

class ResetPasswordPage extends GetView<AuthController> {
  const ResetPasswordPage({super.key});

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
              'Update your\npassword',
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.w900,
                height: 1.1,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Please enter your new password',
              style: TextStyle(
                color: Theme.of(
                  context,
                ).textTheme.bodyMedium?.color?.withValues(alpha: 0.72),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 28),
            AuthTextField(
              label: 'Password',
              controller: controller.passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 16),
            AuthTextField(
              label: 'Confirm password',
              controller: controller.confirmPasswordController,
              obscureText: true,
            ),
            const SizedBox(height: 24),
            PrimaryButton(
              label: 'Reset password',
              onPressed: controller.resetPassword,
            ),
          ],
        ),
      ),
    );
  }
}
