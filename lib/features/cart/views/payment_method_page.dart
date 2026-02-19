import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../app/widgets/primary_button.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
        title: const Text('PAYMENT METHOD', style: TextStyle(fontWeight: FontWeight.w900)),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 24),
        children: [
          SizedBox(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 260,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF2D3441), Color(0xFF24324A)],
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.credit_card, color: Colors.white70),
                      Spacer(),
                      Text('CASSIE DONK', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
                      SizedBox(height: 6),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text('---- 89', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(width: 14, decoration: BoxDecoration(color: const Color(0xFFE0B179), borderRadius: BorderRadius.circular(14))),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('OR', style: TextStyle(fontWeight: FontWeight.w900)),
              ),
              Expanded(child: Divider()),
            ],
          ),
          const SizedBox(height: 8),
          const _LineField(label: 'Name On Card'),
          const SizedBox(height: 10),
          const _LineField(label: 'Card Number'),
          const SizedBox(height: 10),
          const Row(
            children: [
              Expanded(child: _LineField(label: 'Exp Month')),
              SizedBox(width: 12),
              Expanded(child: _LineField(label: 'Exp Date')),
            ],
          ),
          const SizedBox(height: 10),
          const _LineField(label: 'CVV'),
          const SizedBox(height: 20),
          PrimaryButton(label: 'Add card', onPressed: () => Get.toNamed(Routes.orderSuccess)),
        ],
      ),
    );
  }
}

class _LineField extends StatelessWidget {
  const _LineField({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: label),
    );
  }
}
