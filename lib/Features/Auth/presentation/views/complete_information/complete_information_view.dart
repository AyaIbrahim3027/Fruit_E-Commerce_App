import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/Features/Auth/presentation/views/complete_information/widgets/complete_information_view_body.dart';

class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body : CompleteInformationViewBody(),
    );
  }
}