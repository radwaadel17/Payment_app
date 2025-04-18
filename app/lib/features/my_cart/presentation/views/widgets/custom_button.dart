import 'package:app/core/utils/device_size.dart';
import 'package:app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: context.screenWidth,
        height: 80,
        child: TextButton(onPressed: (){}, style: TextButton.styleFrom(
          backgroundColor:const  Color(0xff34A853),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          )
        ), child: Text('Complete Payment' , style: Styles.text25.copyWith(color: Colors.black),),
        
        ),
      ),
    );
  }
}