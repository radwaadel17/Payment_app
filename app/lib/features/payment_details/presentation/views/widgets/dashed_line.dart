import 'package:app/core/utils/device_size.dart';
import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: context.screenHeight * 0.2 + 20 ,
      right: 20 , 
      left: 20 ,
      child:Row(
        children: List.generate(20, (index){
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Container(
                height: 2,
                width: 2,
                decoration: const BoxDecoration(
                  color: Color(0xffB8B8B8)
                ),
              ),
            ),
          );
        }),
      ) 
              );
  }
}
