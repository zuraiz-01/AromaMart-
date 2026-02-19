import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';

class CategoryGroupsPage extends StatelessWidget {
  const CategoryGroupsPage({super.key});

  static const _groups = [
    (
      'New In',
      'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?auto=format&fit=crop&w=1100&q=80',
    ),
    (
      'Clothing',
      'https://images.unsplash.com/photo-1463100099107-aa0980c362e6?auto=format&fit=crop&w=1100&q=80',
    ),
    (
      'Shoes',
      'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=1100&q=80',
    ),
    (
      'Accessories',
      'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=1100&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
        title: const Text('WOMEN', style: TextStyle(fontWeight: FontWeight.w900)),
        actions: const [
          Icon(Icons.favorite_border),
          SizedBox(width: 12),
          Icon(Icons.search),
          SizedBox(width: 14),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 18),
        itemCount: _groups.length,
        separatorBuilder: (_, _) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final group = _groups[index];

          return GestureDetector(
            onTap: group.$1 == 'Clothing' ? () => Get.toNamed(Routes.subcategoryList) : null,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                NetworkImageBox(url: group.$2, height: 112, width: double.infinity, radius: 10),
                Container(
                  height: 112,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withValues(alpha: 0.28),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      group.$1,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
