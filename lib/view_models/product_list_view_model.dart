import 'dart:developer';

import 'package:get/get.dart';
import 'package:testarchitecture/repositories/shop_repository.dart';
import 'package:testarchitecture/view_models/product_view_model.dart';

class ProductListViewModel extends GetxController {
  final _products = <ProductViewModel>[].obs;
  List<ProductViewModel> get products => _products;
  set products(List<ProductViewModel> prods) => _products.value = prods;
  Future<void> fetchProducts() async {
    final results = await ProductRepository().fetchProducts();
    _products.value = results.map((item) => ProductViewModel(item)).toList();
    log('products: $products');
  }
}
