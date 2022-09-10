import 'package:get/get.dart';
import 'package:testarchitecture/screens/home_screen.dart';
import 'package:testarchitecture/view_models/product_list_view_model.dart';

class Screens {
  static final screens = [
    GetPage(
      name: HomeScreen.routeName,
      page: () => const HomeScreen(),
      binding: BindingsBuilder(
        () => Get.put<ProductListViewModel>(ProductListViewModel()),
      ),
    ),
  ];
}
