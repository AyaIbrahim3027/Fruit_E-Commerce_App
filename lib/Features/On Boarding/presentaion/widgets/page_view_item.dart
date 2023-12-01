import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Core/utils/size_config.dart';
import 'package:fruit_ecommerce_app/Core/widgets/space_widget.dart';
class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subTitle, this.image});

  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const VerticalSpace(22),
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
            child: Image.asset(image! , )),
        const VerticalSpace(3),
        Text(
          title!,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const VerticalSpace(1),
        Text(
          subTitle!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
