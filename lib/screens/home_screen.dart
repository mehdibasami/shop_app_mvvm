import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testarchitecture/view_models/product_list_view_model.dart';
import 'package:testarchitecture/widgets/product_list_widget.dart';

class HomeScreen extends GetView<ProductListViewModel> {
  const HomeScreen({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop app'),
      ),
      body: Column(
        children: <Widget>[
          // FilterChipWidget(),
          Expanded(
              child: FutureBuilder<void>(
            future: controller.fetchProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Container();
              }
              return ProductList(
                cardWidth: double.infinity,
                products: controller.products,
                scrollDirection: Axis.vertical,
                cardHeight: 300,
              );
            },
          )),
        ],
      ),
    );
  }
}
