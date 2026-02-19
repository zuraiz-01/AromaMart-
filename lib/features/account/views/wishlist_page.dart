import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/network_image_box.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  static const _products = [
    ('Chunky knit dress', '$45', 'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?auto=format&fit=crop&w=400&q=80'),
    ('Long printed jumpsuit', '$25', 'https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=400&q=80'),
    ('Flowy long jumpsuit', '$35', 'https://images.unsplash.com/photo-1434389677669-e08b4cac3105?auto=format&fit=crop&w=400&q=80'),
    ('Bow collar top', '$30', 'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?auto=format&fit=crop&w=400&q=80'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
        title: const Text('WISHLIST', style: TextStyle(fontWeight: FontWeight.w900)),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Edit')),
          const SizedBox(width: 8),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 14),
        itemCount: _products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final item = _products[index];

          return Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NetworkImageBox(url: item.$3, height: 130, width: double.infinity, radius: 8),
                const SizedBox(height: 6),
                Text(item.$1, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 12)),
                Text(item.$2, style: const TextStyle(fontWeight: FontWeight.w700)),
              ],
            ),
          );
        },
      ),
    );
  }
}
