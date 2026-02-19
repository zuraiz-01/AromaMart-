import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';
import '../../../app/widgets/primary_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
        title: const Text('CHECKOUT', style: TextStyle(fontWeight: FontWeight.w900)),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 22),
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Cassie Donk', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28)),
                Text(
                  '221b Baker St, Marylebone\nLondon,\nUnited Kingdom',
                  style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.65)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              children: [
                Icon(Icons.credit_card),
                SizedBox(width: 8),
                Text('Master Card ending ---89', style: TextStyle(fontWeight: FontWeight.w800)),
                Spacer(),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const NetworkImageBox(
                  url:
                      'https://images.unsplash.com/photo-1464863979621-258859e62245?auto=format&fit=crop&w=500&q=80',
                  height: 100,
                  width: 80,
                  radius: 10,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Snoopy T-shirt', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24)),
                      Text('Ref 04559812'),
                      Text('S'),
                      SizedBox(height: 6),
                      Text('65', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28)),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Icon(Icons.remove_circle_outline),
                    SizedBox(width: 6),
                    Text('1'),
                    SizedBox(width: 6),
                    Icon(Icons.add_circle_outline),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              children: [
                Icon(Icons.add_circle),
                SizedBox(width: 8),
                Text('Add promo code', style: TextStyle(fontWeight: FontWeight.w800)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text('Total $65', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
          const SizedBox(height: 18),
          PrimaryButton(label: 'Place order', onPressed: () => Get.toNamed(Routes.paymentMethod)),
        ],
      ),
    );
  }
}
