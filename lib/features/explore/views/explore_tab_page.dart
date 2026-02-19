import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';

class ExploreTabPage extends StatelessWidget {
  const ExploreTabPage({super.key});

  static const _categories = [
    (
      'Jackets',
      'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=300&q=80',
    ),
    (
      'Coats',
      'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=300&q=80',
    ),
    (
      'Accessories',
      'https://images.unsplash.com/photo-1513116476489-7635e79feb27?auto=format&fit=crop&w=300&q=80',
    ),
    (
      'Denim',
      'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?auto=format&fit=crop&w=300&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 100),
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Get.toNamed(Routes.menu),
                icon: const Icon(Icons.menu),
              ),
              const Spacer(),
              IconButton(
                onPressed: () => Get.toNamed(Routes.wishlist),
                icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () => Get.toNamed(Routes.search),
                icon: const Icon(Icons.search),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 74,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              separatorBuilder: (_, _) => const SizedBox(width: 14),
              itemBuilder: (context, index) {
                final category = _categories[index];

                return Column(
                  children: [
                    NetworkImageBox(
                      url: category.$2,
                      height: 46,
                      width: 46,
                      radius: 46,
                    ),
                    const SizedBox(height: 4),
                    Text(category.$1, style: const TextStyle(fontSize: 11)),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.collection),
            child: const _PromoCard(
              title: 'Denim',
              subtitle: 'Blues explosion',
              image:
                  'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=1100&q=80',
              height: 220,
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.collection),
            child: const _PromoCard(
              title: 'Summer tops',
              subtitle: 'Green trend',
              image:
                  'https://images.unsplash.com/photo-1495385794356-15371f348c31?auto=format&fit=crop&w=1100&q=80',
              height: 210,
            ),
          ),
        ],
      ),
    );
  }
}

class _PromoCard extends StatelessWidget {
  const _PromoCard({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.height,
  });

  final String title;
  final String subtitle;
  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        NetworkImageBox(url: image, height: height, width: double.infinity),
        Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.black.withValues(alpha: 0.30),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  height: 1,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
