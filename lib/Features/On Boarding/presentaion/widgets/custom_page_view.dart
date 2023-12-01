import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Core/constants.dart';
import 'package:fruit_ecommerce_app/Features/On%20Boarding/presentaion/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          image: kOnBoardFirstImage,
          title: 'E Shopping',
          subTitle: 'Explore  top organic fruits & grab them',
        ),
        PageViewItem(
          image: kOnBoardSecondImage,
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          image: kOnBoardThirdImage,
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your Place',
        ),
      ],
    );
  }
}
