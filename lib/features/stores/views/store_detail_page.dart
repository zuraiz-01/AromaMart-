import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/network_image_box.dart';
import '../../../app/widgets/primary_button.dart';

class StoreDetailPage extends StatelessWidget {
  const StoreDetailPage({super.key});

  static const _timings = [
    ('Monday', '8:00 - 7:30'),
    ('Tuesday', '8:00 - 7:30'),
    ('Wednesday', '8:00 - 7:30'),
    ('Thursday', '8:00 - 7:30'),
    ('Friday', '8:00 - 7:30'),
    ('Saturday', '8:00 - 7:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
        title: const Text('CHAMPS-LYSES, PARIS', style: TextStyle(fontWeight: FontWeight.w900)),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
        children: [
          const NetworkImageBox(
            url:
                'https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1100&q=80',
            height: 220,
            width: double.infinity,
            radius: 10,
          ),
          const SizedBox(height: 12),
          ..._timings.map((item) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Text(item.$1, style: TextStyle(fontWeight: item.$1 == 'Tuesday' ? FontWeight.w900 : FontWeight.w700)),
                  const Spacer(),
                  Text(item.$2, style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.6))),
                ],
              ),
            );
          }),
          const Divider(height: 22),
          const Text(
            '22 Avenue des Champs-lyses, Paris\n75008 Paris',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: PrimaryButton(label: 'Go to the shop', onPressed: () => Get.back())),
              const SizedBox(width: 10),
              FloatingActionButton.small(onPressed: () {}, child: const Icon(Icons.call)),
            ],
          ),
        ],
      ),
    );
  }
}
