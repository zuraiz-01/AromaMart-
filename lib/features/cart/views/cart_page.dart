import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';
import '../../../app/widgets/primary_button.dart';
import '../controllers/cart_controller.dart';

class CartPage extends GetView<CartController> {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
                const Text('CART', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
                const Spacer(),
                TextButton(onPressed: controller.clearCart, child: const Text('Clean ✕')),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: Obx(() {
              if (controller.cartItems.isEmpty) {
                return const Center(
                  child: Text('Cart is empty', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
                );
              }

              return ListView(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 100),
                children: [
                  ...controller.cartItems.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            NetworkImageBox(url: item['image'] as String, height: 100, width: 86, radius: 8),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item['name'] as String,
                                      style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 22)),
                                  Text(
                                    item['ref'] as String,
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.color
                                          ?.withValues(alpha: 0.55),
                                    ),
                                  ),
                                  Text(item['size'] as String),
                                  const SizedBox(height: 6),
                                  Text(
                                    '${item['price']}',
                                    style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.remove_circle_outline),
                                        onPressed: () => controller.decrementQty(index),
                                      ),
                                      Text('${item['qty']}', style: const TextStyle(fontWeight: FontWeight.w800)),
                                      IconButton(
                                        icon: const Icon(Icons.add_circle_outline),
                                        onPressed: () => controller.incrementQty(index),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  const Text('Do you have a promotional code?', style: TextStyle(fontWeight: FontWeight.w700)),
                  const SizedBox(height: 18),
                  const Row(
                    children: [
                      Text('Delivery', style: TextStyle(fontWeight: FontWeight.w900)),
                      Spacer(),
                      Text('Standard - Free', style: TextStyle(fontWeight: FontWeight.w900)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  PrimaryButton(
                    label: 'Buy for $100',
                    onPressed: () => Get.toNamed(Routes.checkout),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
