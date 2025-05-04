import 'package:app/core/utils/device_size.dart';
import 'package:app/core/utils/styles.dart';
import 'package:app/core/widgets/text_widget.dart';
import 'package:app/features/payment_details/presentation/views/widgets/dashed_line.dart';
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
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50 + 16),
                child: Column(
                  children: [
                    const Text(
                      'Thank You',
                      style: TextStyle(fontSize: 25),
                    ),
                    const Text(
                      'Your transaction was successful',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    const TextWidget(txtOne: 'Date', txtTwo: '0/1/2024'),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextWidget(txtOne: 'Date', txtTwo: '0/1/2024'),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextWidget(txtOne: 'Date', txtTwo: '0/1/2024'),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                      txtOne: 'Total',
                      txtTwo: r'50.97$',
                      textStyle: Styles.text24,
                    ),
                  ],
                ),
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
            const DashedLine()
          ],
        ),
      ),
    );
  }
}
