import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  static const _products = [
    (
      'Oversized sweater',
      r'$30',
      'https://images.unsplash.com/photo-1495385794356-15371f348c31?auto=format&fit=crop&w=600&q=80',
    ),
    (
      'Turtleneck sweater',
      r'$38',
      'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=600&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          children: [
            Row(
              children: [
                IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
                const Spacer(),
                IconButton(onPressed: () => Get.toNamed(Routes.filter), icon: const Icon(Icons.tune)),
                IconButton(onPressed: () => Get.toNamed(Routes.search), icon: const Icon(Icons.search)),
              ],
            ),
            const SizedBox(height: 8),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                const NetworkImageBox(
                  url:
                      'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1100&q=80',
                  height: 220,
                  width: double.infinity,
                ),
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black.withValues(alpha: 0.35),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Winter Collection',
                        style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900),
                      ),
                      Text('30 items', style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: _products.map((item) {
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: item == _products.first ? 8 : 0),
                    child: GestureDetector(
                      onTap: () => Get.toNamed(Routes.categoryGroups),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NetworkImageBox(url: item.$3, height: 130, width: double.infinity, radius: 8),
                            const SizedBox(height: 8),
                            Text(item.$1, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13)),
                            Text(item.$2, style: const TextStyle(fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
