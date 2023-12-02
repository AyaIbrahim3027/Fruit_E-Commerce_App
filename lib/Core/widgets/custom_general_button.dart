import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Core/constants.dart';
import 'package:fruit_ecommerce_app/Core/utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, this.text, this.onTap});

  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
           child: Text(
              text!,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
        ),
      ),
    );
  }
}
