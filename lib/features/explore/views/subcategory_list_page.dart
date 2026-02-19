import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';

class SubcategoryListPage extends StatelessWidget {
  const SubcategoryListPage({super.key});

  static const _items = [
    ('T-Shirts', 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=220&q=80'),
    ('Sweats', 'https://images.unsplash.com/photo-1503341504253-dff4815485f1?auto=format&fit=crop&w=220&q=80'),
    ('Jackets', 'https://images.unsplash.com/photo-1551537482-f2075a1d41f2?auto=format&fit=crop&w=220&q=80'),
    ('Jeans', 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=220&q=80'),
    ('Overalls', 'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?auto=format&fit=crop&w=220&q=80'),
    ('Skirts', 'https://images.unsplash.com/photo-1550639525-c97d455acf70?auto=format&fit=crop&w=220&q=80'),
    ('Dresses', 'https://images.unsplash.com/photo-1464863979621-258859e62245?auto=format&fit=crop&w=220&q=80'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
        title: const Text('WOMEN - CLOTHING', style: TextStyle(fontWeight: FontWeight.w900)),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 14),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 20),
        itemCount: _items.length,
        separatorBuilder: (_, _) => const Divider(height: 18),
        itemBuilder: (context, index) {
          final item = _items[index];

          return ListTile(
            onTap: () => Get.toNamed(Routes.products),
            leading: NetworkImageBox(url: item.$2, height: 36, width: 36, radius: 36),
            title: Text(item.$1, style: const TextStyle(fontWeight: FontWeight.w800)),
            trailing: const Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}
