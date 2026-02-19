import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/primary_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static const _coverImage =
      'https://images.unsplash.com/photo-1479936343636-73cdc5aae0c3?auto=format&fit=crop&w=900&q=80';

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(_coverImage, fit: BoxFit.cover),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: isDark ? 0.25 : 0.2),
                  Colors.black.withValues(alpha: 0.78),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      onPressed: () => Get.toNamed(Routes.login),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      label: const Text('SIGN IN'),
                      iconAlignment: IconAlignment.end,
                      icon: const Icon(Icons.chevron_right, size: 18),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Ideal store for\nyour shopping',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      height: 1.1,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 22),
                  const Divider(color: Colors.white30),
                  const SizedBox(height: 18),
                  PrimaryButton(
                    label: 'Sign up with email',
                    onPressed: () => Get.toNamed(Routes.signup),
                    outlined: !isDark,
                  ),
                  const SizedBox(height: 10),
                  PrimaryButton(
                    label: 'Continue with Facebook',
                    icon: Icons.facebook,
                    onPressed: () => Get.toNamed(Routes.login),
                    outlined: isDark,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
