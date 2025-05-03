import 'package:app/core/utils/device_size.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              left: -20,
              bottom: context.screenHeight * 0.2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              right: -20,
              bottom: context.screenHeight * 0.2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            const Positioned(
                right: 0,
                left: 0,
                top: -50,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xffD9D9D9),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green,
                    child: Icon(
                      size: 50,
                      color: Colors.white,
                      Icons.check,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
