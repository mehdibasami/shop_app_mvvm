import 'package:flutter/material.dart';
import 'package:testarchitecture/view_models/product_view_model.dart';

import 'product_item.dart';

class ProductList extends StatelessWidget {
  final List<ProductViewModel> products;
  final double cardHeight;
  final double cardWidth;
  final Axis scrollDirection;
  const ProductList(
      {super.key,
      required this.products,
      required this.cardHeight,
      required this.cardWidth,
      this.scrollDirection = Axis.horizontal});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20.0,
            height: 20.0,
          );
        },
        scrollDirection: scrollDirection,
        itemCount: products.length,
        itemBuilder: (_, index) {
          return ProductItem(curentProduct: products[index]);
        });
  }
}
