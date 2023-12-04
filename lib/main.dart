import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Core/constants.dart';
import 'package:fruit_ecommerce_app/firebase_options.dart';
import 'package:get/get.dart';

import 'Features/Splash/presentation/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FruitsMarket());
}
class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: kFont),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}

