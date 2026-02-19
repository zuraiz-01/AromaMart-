import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/network_image_box.dart';
import '../../../app/widgets/primary_button.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int selectedColor = 3;
  int selectedSize = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        children: [
          const NetworkImageBox(
            url:
                'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?auto=format&fit=crop&w=1000&q=80',
            height: 330,
            width: double.infinity,
            radius: 10,
          ),
          const SizedBox(height: 14),
          const Text('60', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24)),
          const Text(
            'Original Black Suit',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 42, height: 1),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 12,
            children: List.generate(4, (index) {
              final colors = [
                const Color(0xFFE0B179),
                const Color(0xFF4F80E1),
                const Color(0xFFE87A3F),
                Colors.black,
              ];

              return GestureDetector(
                onTap: () => setState(() => selectedColor = index),
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: colors[index],
                  child: selectedColor == index
                      ? Icon(
                          Icons.check,
                          size: 15,
                          color: index == 0 ? Colors.black : Colors.white,
                        )
                      : null,
                ),
              );
            }),
          ),
          const SizedBox(height: 16),
          Row(
            children: ['S', 'M', 'L', 'XL'].asMap().entries.map((entry) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: OutlinedButton(
                    onPressed: () => setState(() => selectedSize = entry.key),
                    style: OutlinedButton.styleFrom(
                      backgroundColor:
                          selectedSize == entry.key ? Theme.of(context).colorScheme.primary : null,
                      foregroundColor: selectedSize == entry.key ? Colors.white : null,
                    ),
                    child: Text(entry.value),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          Text(
            'Description',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 6),
          Text(
            'Fluid fabric. Overlay with wide braces. V-neck. Elastic waist and side zipper fastening.',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.72),
            ),
          ),
          const SizedBox(height: 16),
          PrimaryButton(
            label: 'Add to cart',
            onPressed: () => showDialog<void>(
              context: context,
              builder: (context) => AlertDialog(
                contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 36,
                      child: Icon(Icons.shopping_bag_outlined, size: 30),
                    ),
                    const SizedBox(height: 10),
                    const Text('Success!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
                    const SizedBox(height: 6),
                    Text(
                      '1 product has been added to your cart!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyMedium?.color?.withValues(alpha: 0.7),
                      ),
                    ),
                    const SizedBox(height: 14),
                    PrimaryButton(
                      label: 'Checkout',
                      onPressed: () {
                        Navigator.of(context).pop();
                        Get.toNamed(Routes.checkout);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
