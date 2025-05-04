import 'package:app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key, required this.txtOne, required this.txtTwo, this.textStyle});
  final String txtOne;
  final String txtTwo;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            txtOne,
            style: textStyle ?? Styles.text18,
          ),
          const Spacer(),
          Text(
            txtTwo,
            style: textStyle ?? Styles.text18,
          ),
          
        ],
      ),
    );
  }
}
