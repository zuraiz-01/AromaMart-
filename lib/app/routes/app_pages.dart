import 'package:get/get.dart';

import '../../features/account/views/loyalty_page.dart';
import '../../features/account/views/menu_page.dart';
import '../../features/account/views/wishlist_page.dart';
import '../../features/auth/views/forgot_password_page.dart';
import '../../features/auth/views/login_page.dart';
import '../../features/auth/views/password_reset_success_page.dart';
import '../../features/auth/views/reset_password_page.dart';
import '../../features/auth/views/signup_page.dart';
import '../../features/auth/views/welcome_page.dart';
import '../../features/cart/views/checkout_page.dart';
import '../../features/cart/views/order_success_page.dart';
import '../../features/cart/views/payment_method_page.dart';
import '../../features/explore/views/camera_search_page.dart';
import '../../features/explore/views/category_groups_page.dart';
import '../../features/explore/views/collection_page.dart';
import '../../features/explore/views/filter_page.dart';
import '../../features/explore/views/product_detail_page.dart';
import '../../features/explore/views/products_page.dart';
import '../../features/explore/views/search_page.dart';
import '../../features/explore/views/subcategory_list_page.dart';
import '../../features/home/views/home_page.dart';
import '../../features/stores/views/store_detail_page.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = <GetPage<dynamic>>[
    GetPage(name: Routes.welcome, page: () => const WelcomePage()),
    GetPage(name: Routes.login, page: () => const LoginPage()),
    GetPage(name: Routes.signup, page: () => const SignupPage()),
    GetPage(name: Routes.forgotPassword, page: () => const ForgotPasswordPage()),
    GetPage(name: Routes.resetPassword, page: () => const ResetPasswordPage()),
    GetPage(name: Routes.passwordResetSuccess, page: () => const PasswordResetSuccessPage()),

    GetPage(name: Routes.home, page: () => const HomePage()),

    GetPage(name: Routes.collection, page: () => const CollectionPage()),
    GetPage(name: Routes.categoryGroups, page: () => const CategoryGroupsPage()),
    GetPage(name: Routes.subcategoryList, page: () => const SubcategoryListPage()),
    GetPage(name: Routes.products, page: () => const ProductsPage()),
    GetPage(name: Routes.productDetail, page: () => const ProductDetailPage()),
    GetPage(name: Routes.filter, page: () => const FilterPage()),
    GetPage(name: Routes.search, page: () => const SearchPage()),
    GetPage(name: Routes.cameraSearch, page: () => const CameraSearchPage()),

    GetPage(name: Routes.checkout, page: () => const CheckoutPage()),
    GetPage(name: Routes.paymentMethod, page: () => const PaymentMethodPage()),
    GetPage(name: Routes.orderSuccess, page: () => const OrderSuccessPage()),

    GetPage(name: Routes.wishlist, page: () => const WishlistPage()),
    GetPage(name: Routes.loyaltyCard, page: () => const LoyaltyPage()),
    GetPage(name: Routes.storeDetail, page: () => const StoreDetailPage()),
    GetPage(name: Routes.menu, page: () => const MenuPage()),
  ];
}
