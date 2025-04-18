import 'package:app/core/utils/device_size.dart';
import 'package:app/core/utils/image_class.dart';
import 'package:app/core/utils/styles.dart';
import 'package:app/features/my_cart/presentation/views/widgets/custom_app_bar.dart';
import 'package:app/features/my_cart/presentation/views/widgets/custom_button.dart';
import 'package:app/features/my_cart/presentation/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(txt: 'My Cart'),
        SizedBox(
            height: context.screenHeight * 0.55,
            child: Image.asset(ImageClass.basketImage)),
        const SizedBox(
          height: 20,
        ),
        const TextWidget(txtOne: 'Order Subtotal', txtTwo: r'42$'),
        const TextWidget(txtOne: 'Discount', txtTwo: r'0$'),
        const TextWidget(txtOne: 'Shipping', txtTwo: r'8$'),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          endIndent: 50,
          indent: 50,
          thickness: 2,
        ),
        TextWidget(
          txtOne: 'Total',
          txtTwo: r'50.97$',
          textStyle: Styles.text24,
        ),
      const Spacer(),
      const CustomButton(),
      const SizedBox(height:20,),
      ],
    );
  }
}
