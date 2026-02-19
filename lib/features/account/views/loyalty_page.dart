import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/network_image_box.dart';

class LoyaltyPage extends StatelessWidget {
  const LoyaltyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
        title: const Text('LOYALTY CARD', style: TextStyle(fontWeight: FontWeight.w900)),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 18),
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: const LinearGradient(colors: [Color(0xFF2C3341), Color(0xFF243449)]),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('||||||||||||||||||||', style: TextStyle(fontSize: 22, color: Colors.white70)),
                Spacer(),
                Text('230', style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.w900)),
                Text('Loyalty points', style: TextStyle(color: Colors.white70)),
                SizedBox(height: 4),
                Text('Cassie Donk', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900)),
                Text('Status : Member', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'A $5 coupon will be issued every 200 loyalty points. Coupons are 30 days late',
            style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.66)),
          ),
          const SizedBox(height: 20),
          const Text('My offers', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          const NetworkImageBox(
            url:
                'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=1000&q=80',
            height: 160,
            width: double.infinity,
          ),
          const SizedBox(height: 8),
          const Text('10% on all jeans', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28)),
        ],
      ),
    );
  }
}
