import 'package:flutter/material.dart';

class TextFadingTransition extends StatelessWidget {
  const TextFadingTransition({
    super.key,
    required this.fadingAnimation,
  });

  final Animation<double>? fadingAnimation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadingAnimation!,
      child: const Text(
        'Fruit Market',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 51,
          fontWeight: FontWeight.bold,
          color: Color(0xffffffff),
        ),
      ),
    );
  }
}
