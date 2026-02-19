import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/primary_button.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues _rangeValues = const RangeValues(12, 126);
  int _selectedColor = 4;
  int _selectedSize = 0;

  final _brands = ['Adidas', 'Bershka', 'Converse', 'Diesel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: Get.back, icon: const Icon(Icons.chevron_left)),
        title: const Text('CART', style: TextStyle(fontWeight: FontWeight.w900)),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Clean X')),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
        children: [
          const Text('Price', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
          RangeSlider(
            values: _rangeValues,
            min: 0,
            max: 200,
            labels: RangeLabels(
              '\$${_rangeValues.start.round()}',
              '\$${_rangeValues.end.round()}',
            ),
            onChanged: (value) => setState(() => _rangeValues = value),
          ),
          const SizedBox(height: 8),
          const Text('Colors', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: List.generate(6, (index) {
              final colors = [
                const Color(0xFFE0B179),
                const Color(0xFFE973A4),
                const Color(0xFFE6414A),
                const Color(0xFF4F80E1),
                Colors.white,
                Colors.black,
              ];

              return GestureDetector(
                onTap: () => setState(() => _selectedColor = index),
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: colors[index],
                  child: _selectedColor == index
                      ? Icon(
                          Icons.check,
                          size: 16,
                          color: index == 4 ? Colors.black : Colors.white,
                        )
                      : null,
                ),
              );
            }),
          ),
          const SizedBox(height: 12),
          const Text('Sizes', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          Row(
            children: ['S', 'M', 'L', 'XL'].asMap().entries.map((entry) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: OutlinedButton(
                    onPressed: () => setState(() => _selectedSize = entry.key),
                    style: OutlinedButton.styleFrom(
                      backgroundColor:
                          _selectedSize == entry.key ? Theme.of(context).colorScheme.primary : null,
                      foregroundColor: _selectedSize == entry.key ? Colors.white : null,
                    ),
                    child: Text(entry.value),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 12),
          const Text('Brands', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
          const SizedBox(height: 6),
          ..._brands.map((brand) {
            final selected = brand == 'Bershka';

            return ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(brand, style: TextStyle(fontWeight: selected ? FontWeight.w900 : FontWeight.w600)),
              trailing: selected ? const Icon(Icons.check, size: 18) : null,
            );
          }),
          const SizedBox(height: 8),
          PrimaryButton(label: 'Apply filters', onPressed: Get.back),
        ],
      ),
    );
  }
}
