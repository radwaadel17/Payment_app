import 'package:app/core/utils/device_size.dart';
import 'package:app/core/utils/image_class.dart';
import 'package:app/core/utils/styles.dart';
import 'package:app/core/widgets/custom_app_bar.dart';
import 'package:app/features/my_cart/presentation/views/widgets/custom_button.dart';
import 'package:app/core/widgets/text_widget.dart';
import 'package:app/features/payment_details/presentation/views/payment_details_view.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
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
        const Spacer(flex: 1,),
        CustomButton(
          txt: 'Complete Payment',
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
              return const PaymentDetailsView();
          }));
        },),
         const Spacer(flex: 1,),
        ],
      ),
    );
  }
}
