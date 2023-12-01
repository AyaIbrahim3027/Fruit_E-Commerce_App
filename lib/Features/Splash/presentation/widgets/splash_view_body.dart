import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Core/utils/size_config.dart';
import 'package:fruit_ecommerce_app/Features/On%20Boarding/presentaion/on_boarding_view.dart';
import 'package:fruit_ecommerce_app/Features/Splash/presentation/widgets/text_fading_transition.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();

    initFadingAnimation();

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 300,
        ),
        TextFadingTransition(fadingAnimation: fadingAnimation),
        // AnimatedBuilder(
        //   animation: fadingAnimation!,
        //   builder: (context , _) => Opacity(
        //     opacity: fadingAnimation?.value,
        //     child: const Text(
        //       'Fruit Market',
        //       style: TextStyle(
        //         fontFamily: 'Poppins',
        //         fontSize: 51,
        //         fontWeight: FontWeight.bold,
        //         color: Color(0xffffffff),
        //       ),
        //     ),
        //   ),
        // ),
        const SizedBox(
          height: 200,
        ),
        Image.asset(kSplashViewImage),
      ],
    );
  }

  void initFadingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardingView(), transition: Transition.fade);
    });
  }
}
