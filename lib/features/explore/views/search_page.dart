import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/primary_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static const _recentSearches = [
    'Red Sunglasses',
    'Large T-Shirt',
    'Jaws Hoodie',
    'Blue Sweater',
    'Levi\'s Jeans',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 18),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(28), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                const Text('Recent searches', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
                const Spacer(),
                TextButton(onPressed: () {}, child: const Text('Clean X')),
              ],
            ),
            const SizedBox(height: 6),
            Expanded(
              child: ListView.separated(
                itemCount: _recentSearches.length,
                separatorBuilder: (_, _) => const Divider(height: 12),
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(_recentSearches[index], style: const TextStyle(fontWeight: FontWeight.w700)),
                    trailing: Icon(
                      Icons.close,
                      size: 16,
                      color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.5),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    label: 'Search with camera',
                    onPressed: () => Get.toNamed(Routes.cameraSearch),
                  ),
                ),
                const SizedBox(width: 12),
                FloatingActionButton.small(
                  onPressed: () => Get.toNamed(Routes.cameraSearch),
                  child: const Icon(Icons.image_search),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
