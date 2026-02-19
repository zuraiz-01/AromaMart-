import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';

class StoresPage extends StatelessWidget {
  const StoresPage({super.key});

  static const _stores = [
    (
      'Champs-lyses, Paris',
      'CLOSE',
      'https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1100&q=80',
    ),
    (
      'Chtelet - Les Halles, Paris',
      'OPEN',
      'https://images.unsplash.com/photo-1555529771-35a50fe77b6e?auto=format&fit=crop&w=1100&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 90),
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Find all Blume\nstores here',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900, height: 1.02),
                ),
              ),
              Text(
                'Paris',
                style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.7)),
              ),
              const SizedBox(width: 4),
              const Icon(Icons.location_on_outlined, size: 18),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(26),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              CircleAvatar(
                radius: 18,
                child: IconButton(
                  iconSize: 16,
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Text('All stores', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          ..._stores.map((store) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: () => Get.toNamed(Routes.storeDetail),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    NetworkImageBox(url: store.$3, height: 190, width: double.infinity, radius: 10),
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withValues(alpha: 0.22),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(store.$2, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 11)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              store.$1,
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
