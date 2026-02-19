import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/primary_button.dart';
import '../controllers/auth_controller.dart';

class PasswordResetSuccessPage extends GetView<AuthController> {
  const PasswordResetSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
          children: [
            const Spacer(),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.26),
                        Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.08),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.lock,
                    color: isDark
                        ? Colors.white
                        : Theme.of(context).colorScheme.primary,
                    size: 68,
                  ),
                ),
                Positioned(
                  right: 8,
                  bottom: 20,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color(0xFF43C86A),
                    child: const Icon(Icons.check, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            const Text(
              'Hello Cassie!',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 42),
            ),
            const SizedBox(height: 8),
            Text(
              'Your password has been reset!',
              style: TextStyle(
                color: Theme.of(
                  context,
                ).textTheme.bodyMedium?.color?.withValues(alpha: 0.62),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 28),
            PrimaryButton(
              label: 'Start shopping',
              onPressed: controller.startShopping,
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
