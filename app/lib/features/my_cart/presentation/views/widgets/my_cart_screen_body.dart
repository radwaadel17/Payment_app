import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
      ],
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.txt});
   final String txt ;
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Row(
        children: [
        ],
      ),
    );
  }
}