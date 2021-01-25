import 'package:flutter/material.dart';
import 'dart:async';
import "../../../components/paymentForm.dart";

class VisaCardPayment extends StatefulWidget {
  @override
  _VisaCardPaymentState createState() => _VisaCardPaymentState();

  final _formKey = GlobalKey<FormState>();
  var paymentInfo = {
    "card-holder-name": "",
    "card-number": "",
    "expiration-date": "",
    "cvv": ""
  };
  bool paymentSuceeded = true;
  final cardHolderNameCtrl = TextEditingController();
  final cardNumberCtrl = TextEditingController();
  final expirationDateCtrl = TextEditingController();
  final cvvCtrl = TextEditingController();
}

class _VisaCardPaymentState extends State<VisaCardPayment> {
  void populatePaymentInfo() {
    widget.paymentInfo['card-holder-name'] = widget.cardHolderNameCtrl.text;
    widget.paymentInfo['card-number'] = widget.cardNumberCtrl.text;
    widget.paymentInfo['expiration-date'] = widget.expirationDateCtrl.text;
    widget.paymentInfo['cvv'] = widget.cvvCtrl.text;

    var timer = Timer(Duration(seconds: 2), () => _navigate());
  }

  void _navigate() {
    Navigator.pushNamed(context,
        widget.paymentSuceeded ? "/payment_suceeded" : "/payment_failed",
        arguments: widget.paymentInfo);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
        width: 20,
        child: Column(
          children: [
            Container(
              height: 30,
              margin: EdgeInsets.only(bottom: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                "Visa Card",
                style: TextStyle(fontSize: 30),
              ),
            ),
            //form
            PaymentForm(
                cardHolderNameCtrl: widget.cardHolderNameCtrl,
                cardNumberCtrl: widget.cardNumberCtrl,
                cvvCtrl: widget.cvvCtrl,
                expirationDateCtrl: widget.expirationDateCtrl,
                formKey: widget._formKey,
                setState: () => this.setState(() {
                      populatePaymentInfo();
                    })
                    )
          ],
        ),
      ),
    );
  }
}
