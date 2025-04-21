import 'package:app/core/utils/image_class.dart';
import 'package:app/core/utils/styles.dart';
import 'package:flutter/material.dart';
 class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
      child: SafeArea(
        child: Row(
          children: [
            SizedBox(
              height: 25,
              child: Image.asset(ImageClass.arrowImage)),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(txt , style: Styles.text25,)))
          ],
        ),
      ),
    );
  }
}
