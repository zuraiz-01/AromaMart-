import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/initial_binding.dart';
import 'controllers/theme_controller.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';

class AromaMartApp extends StatelessWidget {
  const AromaMartApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.isRegistered<ThemeController>()
        ? Get.find<ThemeController>()
        : Get.put(ThemeController(), permanent: true);

    return Obx(
      () => GetMaterialApp(
        title: 'AromaMart',
        debugShowCheckedModeBanner: false,
        initialBinding: InitialBinding(),
        initialRoute: Routes.welcome,
        getPages: AppPages.routes,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: themeController.themeMode.value,
      ),
    );
  }
}
