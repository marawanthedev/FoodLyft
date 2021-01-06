import 'package:flutter/material.dart';
import "../../../services/hexColor.dart";
import 'dart:async';

class MasterCardPayment extends StatefulWidget {
  @override
  _MasterCardPaymentState createState() => _MasterCardPaymentState();

  final _formKey = GlobalKey<FormState>();
  var paymentInfo = {
    "card-holder-name": "",
    "card-number": "",
    "expiration-date": "",
    "cvv": ""
  };
  bool paymentSuceeded = false;
  final cardHolderNameCtrl = TextEditingController();
  final cardNumberCtrl = TextEditingController();
  final expirationDateCtrl = TextEditingController();
  final cvvCtrl = TextEditingController();
}

class _MasterCardPaymentState extends State<MasterCardPayment> {
  void populatePaymentInfo() {
    widget.paymentInfo['card-holder-name'] = widget.cardHolderNameCtrl.text;
    widget.paymentInfo['card-number'] = widget.cardNumberCtrl.text;
    widget.paymentInfo['expiration-date'] = widget.expirationDateCtrl.text;
    widget.paymentInfo['cvv'] = widget.cvvCtrl.text;


    Navigator.pushNamed(context, "/payment_failed",
        arguments: widget.paymentInfo);


    // var timer = Timer(Duration(seconds: 2), () => _navigate());
  }

  void _navigate() {
    print("navigate");
    Navigator.pushNamed(context,
        widget.paymentSuceeded ? "/payment_suceeded" : "/payment_failed",
        arguments: widget.paymentInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
      width: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 30,
            alignment: Alignment.centerLeft,
            child: Text(
              "Master Card",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Form(
            key: widget._formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 350,
                  height: 65,
                  child: TextFormField(
                    controller: widget.cardHolderNameCtrl,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'Cardholder Name',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter CardHolder Name';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: 350,
                  height: 65,
                  child: TextFormField(
                    controller: widget.cardNumberCtrl,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Card Number',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Card Number';
                      }
                      if (value.length == 0) {
                        return 'Please enter the 12-digit Card Number';
                      }
                      return null;
                    },
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 165,
                      height: 65,
                      margin: EdgeInsets.only(right: 20),
                      child: TextFormField(
                        controller: widget.expirationDateCtrl,
                        decoration: const InputDecoration(
                          hintText: 'Expiration Date',
                        ),
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
                    ),
                    Container(
                      width: 165,
                      height: 65,
                      child: TextFormField(

                        obscureText: true,
                        controller: widget.cvvCtrl,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'CVV',
                        ),
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
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: SizedBox(
                    width: 400,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        if (widget._formKey.currentState.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.

                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text(
                              'Processing Data',
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: HexColor("F2A22C"),
                          ));
                          this.setState(() {
                            populatePaymentInfo();
                          });
                        }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, 0),
                          )),
                      child: Text("Confirm Payment",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              fontSize: 20)),
                      color: HexColor("F2A22C"),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
