import 'package:app/core/utils/device_size.dart';
import 'package:app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key , required this.onPressed, required this.txt });
  final void Function() onPressed ;
  final String txt ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: context.screenWidth,
        height: 80,
        child: TextButton(onPressed: onPressed, style: TextButton.styleFrom(
          backgroundColor:const  Color(0xff34A853),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          )
        ), child: Text(txt , style: Styles.text25.copyWith(color: Colors.black),),
        
        ),
      ),
    );
  }
}