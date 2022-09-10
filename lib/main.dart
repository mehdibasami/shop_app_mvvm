import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:testarchitecture/navigation/screens.dart';
import 'package:testarchitecture/screens/home_screen.dart';
import 'package:testarchitecture/view_models/product_list_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // if (WidgetsBinding.instance != null) {
    //   WidgetsBinding.instance!.renderView.automaticSystemUiAdjustment = false;
    // }
    return GetMaterialApp(
      // initialBinding: AppInitialBinding(),
      getPages: Screens.screens,
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Shopya',
      builder: (BuildContext context, Widget? child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: 1.0),
          child: child ?? Container(),
        );
      },
      initialBinding: AppInitialBinding(),
      home: const HomeScreen(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class AppInitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProductListViewModel());
  }
}
