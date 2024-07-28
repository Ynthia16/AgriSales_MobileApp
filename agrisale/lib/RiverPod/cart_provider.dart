import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends StateNotifier<List<Map<String, String>>> {
  CartNotifier() : super([]);

  void addToCart(Map<String, String> product) {
    state = [...state, product];
  }

  void removeFromCart(Map<String, String> product) {
    state = state.where((item) => item != product).toList();
  }

  void clearCart() {
    state = [];
  }
}


final cartProvider =
    StateNotifierProvider<CartNotifier, List<Map<String, String>>>((ref) {
  return CartNotifier();
});
