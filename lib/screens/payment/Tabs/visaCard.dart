import 'package:flutter/material.dart';
import "../../../services/hexColor.dart";

class VisaCardPayment extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
      width: 20,
      child: Column(
        children: [
          Container(
            height: 30,
            alignment: Alignment.centerLeft,
            child: Text(
              "Visa Card",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 350,
                  height: 65,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Cardholder Name',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: 350,
                  height: 65,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Card Number',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
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
                        decoration: const InputDecoration(
                          hintText: 'Expiration Date',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      width: 165,
                      height: 65,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'CVV',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
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
                      onPressed: () => {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, 0),
                          )),
                      child: Text("Confirm Payment",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
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
