import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/primary_button.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  static const _menuItems = [
    'Home',
    'Explore',
    'Stores',
    'Cart',
    'Notifications',
    'Loyalty Card',
    'My orders',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(radius: 24, child: Icon(Icons.person)),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cassie Donk', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28)),
                    Text(
                      '4 orders',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.62),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            ..._menuItems.map((item) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(item, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 27)),
                trailing: item == 'Cart' ? const CircleAvatar(radius: 10, child: Text('1', style: TextStyle(fontSize: 11))) : null,
                onTap: () {
                  if (item == 'Loyalty Card') {
                    Get.toNamed(Routes.loyaltyCard);
                  }
                  if (item == 'Stores') {
                    Get.toNamed(Routes.storeDetail);
                  }
                },
              );
            }),
            const Spacer(),
            Row(
              children: [
                Expanded(child: PrimaryButton(label: 'Settings', onPressed: () {})),
                const SizedBox(width: 10),
                Expanded(child: PrimaryButton(label: 'Sign Out', outlined: true, onPressed: () => Get.offAllNamed(Routes.welcome))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
