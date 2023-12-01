import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Features/Splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff69A03A),
      body: SplashViewBody(),
    );
  }
}
