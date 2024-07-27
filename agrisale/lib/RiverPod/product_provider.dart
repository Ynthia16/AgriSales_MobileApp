import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agrisale/models/product_model.dart'; // Import your Product model

class ProductNotifier extends StateNotifier<List<Product>> {
  ProductNotifier() : super([]);

  void addProduct(Product product) {
    state = [...state, product];
  }
}

final productProvider =
    StateNotifierProvider<ProductNotifier, List<Product>>((ref) {
  return ProductNotifier();
});
