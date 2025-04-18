import 'package:app/features/my_cart/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(txt: 'My Cart')
      ],
    );
  }
}

