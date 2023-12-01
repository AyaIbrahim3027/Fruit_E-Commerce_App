import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Core/utils/size_config.dart';
import 'package:fruit_ecommerce_app/Core/widgets/custom_buttons.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 30,
          child: const Text(
            'Skip',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff898989),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          child: const CustomGeneralButton(text: 'Next'),
        ),
      ],
    );
  }
}
