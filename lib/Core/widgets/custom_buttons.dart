import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Core/constants.dart';
import 'package:fruit_ecommerce_app/Core/utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Center(
         child: Text(
            text!,
            style: TextStyle(
              fontSize: 14,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w500,
            ),
            softWrap: false,
          ),
      ),
    );
  }
}
