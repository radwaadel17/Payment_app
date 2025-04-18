import 'package:app/features/my_cart/presentation/views/widgets/my_cart_screen_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: MyCartViewBody(),
    );
  }
}