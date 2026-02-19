import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/network_image_box.dart';
import '../../../app/widgets/primary_button.dart';

class CameraSearchPage extends StatelessWidget {
  const CameraSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const NetworkImageBox(
            url:
                'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&w=1100&q=80',
            radius: 0,
          ),
          Container(color: Colors.black.withValues(alpha: 0.25)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: Get.back,
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    icon: const Icon(Icons.chevron_left),
                    label: const Text('SEARCH CAMERA', style: TextStyle(fontWeight: FontWeight.w800)),
                  ),
                  const Spacer(),
                  Center(
                    child: Container(
                      height: 300,
                      width: 240,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                  const Spacer(),
                  PrimaryButton(label: 'Start a search', onPressed: Get.back),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
