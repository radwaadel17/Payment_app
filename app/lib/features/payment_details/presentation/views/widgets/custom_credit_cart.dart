import 'package:app/features/my_cart/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: (value) {}),
        CreditCardForm(
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
          onCreditCardModelChange: (CreditCardModel){
            cardNumber = CreditCardModel.cardNumber ; 
            expiryDate = CreditCardModel.expiryDate ; 
            cvvCode = CreditCardModel.cvvCode ; 
            showBackView = CreditCardModel.isCvvFocused ; 
            cardHolderName = CreditCardModel.cardHolderName;
            setState(() {
              
            });
          },
          formKey: formKey),
          CustomButton(onPressed: (){}, txt: 'Pay',),
      ],
    );
  }
}
