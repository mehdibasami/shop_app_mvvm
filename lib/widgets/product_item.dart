import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testarchitecture/view_models/product_view_model.dart';

class ProductItem extends StatelessWidget {
  final ProductViewModel curentProduct;

  const ProductItem({super.key, required this.curentProduct});
  @override
  Widget build(BuildContext context) {
    // final deviceHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 160,
      width: Get.width,
      child: Stack(
        children: [
          Row(
            children: <Widget>[
              Stack(
                children: [
                  Hero(
                    tag: curentProduct.product.id,
                    child: SizedBox(
                      height: 160,
                      width: Get.width * 0.4,
                      child: Image(
                        image:
                            NetworkImage(curentProduct.product.imagesArray[0]),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          curentProduct.product.title,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                          child: Text('160,000 تومان',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: Get.isDarkMode
                                      ? Colors.white
                                      : Theme.of(context).colorScheme.secondary,
                                  fontSize: 17))),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              // splashColor: Colors.transparent,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
