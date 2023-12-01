import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Core/constants.dart';
import 'package:get/get.dart';

import 'Features/Splash/presentation/splash_view.dart';

void main() {
  runApp(const FruitsMarket());
}
class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: kFont),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

