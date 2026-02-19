import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../account/views/account_page.dart';
import '../../cart/views/cart_page.dart';
import '../../explore/views/explore_tab_page.dart';
import '../../stores/views/stores_page.dart';
import '../../../app/routes/app_routes.dart';
import '../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const pages = [
      ExploreTabPage(),
      StoresPage(),
      AccountPage(),
      CartPage(),
      _MoreTabPage(),
    ];

    return Scaffold(
      body: Obx(() => IndexedStack(index: controller.selectedTab.value, children: pages)),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedTab.value,
          onDestinationSelected: controller.setTab,
          indicatorColor: const Color(0xFFE7A85B).withValues(alpha: 0.2),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: ''),
            NavigationDestination(icon: Icon(Icons.location_on_outlined), label: ''),
            NavigationDestination(icon: Icon(Icons.person_outline), label: ''),
            NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: ''),
            NavigationDestination(icon: Icon(Icons.more_horiz), label: ''),
          ],
        ),
      ),
    );
  }
}

class _MoreTabPage extends StatelessWidget {
  const _MoreTabPage();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: FilledButton.icon(
          onPressed: () => Get.toNamed(Routes.menu),
          icon: const Icon(Icons.menu),
          label: const Text('OPEN MENU'),
        ),
      ),
    );
  }
}
