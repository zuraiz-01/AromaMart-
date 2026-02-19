import 'package:get/get.dart';

class CartController extends GetxController {
  final RxList<Map<String, dynamic>> cartItems = <Map<String, dynamic>>[
    {
      'name': 'Snoopy T-shirt',
      'ref': 'Ref 04559812',
      'size': 'S',
      'price': 40,
      'qty': 1,
      'image': 'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=600&q=80',
    },
    {
      'name': 'American armholes',
      'ref': 'Ref 04559811',
      'size': 'S',
      'price': 30,
      'qty': 2,
      'image': 'https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=600&q=80',
    },
  ].obs;

  int get subtotal => cartItems.fold<int>(0, (sum, item) {
        final qty = item['qty'] as int;
        final price = item['price'] as int;
        return sum + qty * price;
      });

  void clearCart() {
    cartItems.clear();
  }

  void incrementQty(int index) {
    final current = Map<String, dynamic>.from(cartItems[index]);
    current['qty'] = (current['qty'] as int) + 1;
    cartItems[index] = current;
  }

  void decrementQty(int index) {
    final current = Map<String, dynamic>.from(cartItems[index]);
    final nextQty = (current['qty'] as int) - 1;
    if (nextQty <= 0) {
      cartItems.removeAt(index);
      return;
    }
    current['qty'] = nextQty;
    cartItems[index] = current;
  }
}
