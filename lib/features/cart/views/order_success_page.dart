import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/primary_button.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
              ),
              const Spacer(),
              const CircleAvatar(radius: 60, child: Icon(Icons.inventory_2_outlined, size: 54)),
              const SizedBox(height: 16),
              const Text('Order Success!', style: TextStyle(fontSize: 42, fontWeight: FontWeight.w900)),
              const SizedBox(height: 8),
              Text(
                'Your order has been placed successfully!\nFor more details, go to my orders.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.65)),
              ),
              const Spacer(),
              PrimaryButton(label: 'My orders', outlined: true, onPressed: () => Get.offAllNamed(Routes.home)),
              const SizedBox(height: 10),
              PrimaryButton(label: 'Continue shopping', onPressed: () => Get.offAllNamed(Routes.home)),
            ],
          ),
        ),
      ),
    );
  }
}
