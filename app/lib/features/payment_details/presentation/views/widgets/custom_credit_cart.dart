import 'package:app/features/my_cart/presentation/views/widgets/custom_button.dart';
import 'package:app/features/payment_details/presentation/views/thank_you_view.dart';
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
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: showBackView,
              onCreditCardWidgetChange: (value) {}),
          CreditCardForm(
              autovalidateMode: autovalidateMode,
              isHolderNameVisible: true,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
              onCreditCardModelChange: (CreditCardModel) {
                cardNumber = CreditCardModel.cardNumber;
                expiryDate = CreditCardModel.expiryDate;
                cvvCode = CreditCardModel.cvvCode;
                showBackView = CreditCardModel.isCvvFocused;
                cardHolderName = CreditCardModel.cardHolderName;
                setState(() {});
              },
              formKey: formKey),
          const Spacer(
            flex: 2,
          ),
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const ThankYouView();
                }));
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            txt: 'Pay',
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
