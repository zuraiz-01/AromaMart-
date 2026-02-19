import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  static const _products = [
    (
      'V-neck T-shirt',
      r'$30',
      'https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=400&q=80',
    ),
    (
      'American armholes',
      r'$28',
      'https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=400&q=80',
    ),
    (
      'Ramones T-shirt',
      r'$26',
      'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?auto=format&fit=crop&w=400&q=80',
    ),
    (
      'Snoopy T-shirt',
      r'$40',
      'https://images.unsplash.com/photo-1495385794356-15371f348c31?auto=format&fit=crop&w=400&q=80',
    ),
    (
      'Flowy long jumpsuit',
      r'$35',
      'https://images.unsplash.com/photo-1434389677669-e08b4cac3105?auto=format&fit=crop&w=400&q=80',
    ),
    (
      'Bow collar top',
      r'$30',
      'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?auto=format&fit=crop&w=400&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
        title: const Text('CLOTHING - T-SHIRTS', style: TextStyle(fontWeight: FontWeight.w900)),
        actions: [
          IconButton(onPressed: () => Get.toNamed(Routes.filter), icon: const Icon(Icons.tune)),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 14),
        itemCount: _products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          final product = _products[index];

          return GestureDetector(
            onTap: () => Get.toNamed(Routes.productDetail),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NetworkImageBox(url: product.$3, height: 150, width: double.infinity, radius: 8),
                  const SizedBox(height: 8),
                  Text(product.$1, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 13)),
                  Text(product.$2, style: const TextStyle(fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
