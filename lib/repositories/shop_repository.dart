import 'dart:convert';
import 'dart:developer';

import 'package:testarchitecture/models/product.dart';
import 'package:http/http.dart' as http;
import 'package:testarchitecture/network/api_client.dart';

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    var apiClient = ApiClient('/products');

    try {
      final response = await http.get(apiClient.url);

      final extractedData = json.decode(response.body) as List<dynamic>;
      final List<Product> loadedProduct = [];

      for (var element in extractedData) {
        loadedProduct.add(Product.fromJson(element));
      }

      return loadedProduct;
    } catch (e) {
      log('Error: $e');
      return [];
    }
  }
}
