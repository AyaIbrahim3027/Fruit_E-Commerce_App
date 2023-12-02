import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_ecommerce_app/Core/widgets/custom_button_with_icon.dart';
import 'package:fruit_ecommerce_app/Core/widgets/space_widget.dart';
import 'package:get/get.dart';

import '../../../../../../Core/constants.dart';
import '../../../../../../Core/utils/size_config.dart';
import '../../complete_information/complete_information_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(15),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset(kLogo),
        ),
        // VerticalSpace(1.5),
        const Text(
          'Fruit Market',
          style: TextStyle(
            fontSize: 51,
            color: kMainColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        // VerticalSpace(15),
        const Expanded(child: SizedBox()),
        Row(
          children:  [
            const Flexible(
              flex: 1,
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    color:Color(0xFFdb3236),
                    iconData: FontAwesomeIcons.googlePlusG,
                    text: 'Log in with ',),
                ),),
            Flexible(
              flex: 1,
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(() => const CompleteInformationView(),
                        duration:const Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  color: const Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Log in with ',),
              ),),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}

