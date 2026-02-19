import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  static const _options = [
    'Account Details',
    'Loyalty card & offers',
    'Notifications',
    'Delivery Information',
    'Payment Information',
    'Language',
    'Privacy Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 90),
        children: [
          const Text('ACCOUNT', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const NetworkImageBox(
                  url:
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=220&q=80',
                  height: 74,
                  width: 74,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cassie Donk', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
                    Text(
                      'Member since 2019',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.62),
                      ),
                    ),
                    const SizedBox(height: 6),
                    FilledButton.tonal(
                      onPressed: () => Get.toNamed(Routes.menu),
                      child: const Text('EDIT ACCOUNT'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(onPressed: () {}, icon: const Icon(Icons.inventory_2_outlined), label: const Text('Orders')),
                TextButton.icon(onPressed: () => Get.toNamed(Routes.storeDetail), icon: const Icon(Icons.location_on_outlined), label: const Text('My Address')),
                TextButton.icon(onPressed: () => Get.toNamed(Routes.menu), icon: const Icon(Icons.settings), label: const Text('Settings')),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ..._options.map((option) {
            return ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {
                if (option == 'Loyalty card & offers') {
                  Get.toNamed(Routes.loyaltyCard);
                }
              },
              title: Text(option, style: const TextStyle(fontWeight: FontWeight.w700)),
              trailing: const Icon(Icons.chevron_right),
            );
          }),
        ],
      ),
    );
  }
}
