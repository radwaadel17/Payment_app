import 'package:app/features/my_cart/presentation/views/my_cart_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PaymentApp());
}

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home: MyCartView(),
    );
}
}