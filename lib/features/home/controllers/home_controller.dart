import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt selectedTab = 0.obs;

  void setTab(int index) {
    selectedTab.value = index;
  }
}
