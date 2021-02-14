import 'package:flutter/material.dart';
import "./formInput.dart";
import '../services/general/hexColor.dart';
import "../components/button.dart";

class PaymentForm extends StatelessWidget {
  var formKey;
  final cardHolderNameCtrl, cardNumberCtrl, expirationDateCtrl, cvvCtrl;
  Function setState;

  PaymentForm(
      {this.cardHolderNameCtrl,
      this.cardNumberCtrl,
      this.cvvCtrl,
      this.expirationDateCtrl,
      this.formKey,
      this.setState});
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FormInput(
            inputWidth: 350,
            inputHeight: 65,
            marginRight: 0,
            prefixIcon: null,
            controller: cardHolderNameCtrl,
            placeHolder: "CardHolder Name",
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter CardHolder Name';
              }
              return null;
            },
            hideInputValue: false,
          ),
          FormInput(
            inputWidth: 350,
            inputHeight: 65,
            hideInputValue: true,
            marginRight: 0,
            prefixIcon: null,
            placeHolder: "Card Number",
            controller: cardNumberCtrl,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter Card Number';
              }
              if (value.length < 1) {
                return 'Please enter the 12-digit Card Number';
              }
              return null;
            },
          ),
          Row(
            children: [
              FormInput(
                inputWidth: 165,
                inputHeight: 65,
                controller: expirationDateCtrl,
                hideInputValue: false,
                prefixIcon: null,
                placeHolder: "Expiration Date",
                marginRight: 20,
                validator: (value) {
                  RegExp regex =
                      RegExp("(1[0-2]|0?[1-9])/(?:[0-9]{2})?[0-9]{2}");
                  if (value.isEmpty) {
                    return 'Please enter Expiration Date';
                  }
                  if (!regex.hasMatch(value)) {
                    return 'Please enter a valid Date';
                  }

                  return null;
                },
              ),
              FormInput(
                inputWidth: 165,
                inputHeight: 65,
                marginRight: 0,
                prefixIcon: null,
                hideInputValue: true,
                controller: cvvCtrl,
                placeHolder: "CVV",
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter CVV';
                  }
                  if (value.length != 3) {
                    return 'Please enter the 3-digit CVV';
                  }
                  return null;
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: customButton(
              width: 400.0,
              height: 50.0,
              buttonText: "Confirm payment",
              onPressed: () {
                if (formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(
                      'Processing Data',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: HexColor("F2A22C"),
                  ));
                  setState();
                }
              },
              backgroundColor: HexColor("F2A22C"),
              formKey: formKey,
            ),
          ),
        ],
      ),
    );
  }
}
