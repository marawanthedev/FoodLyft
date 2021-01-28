import 'package:flutter/material.dart';
import '../../../services/general/hexColor.dart';

class CashPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: SizedBox(
        height: 50,
        width: 375,
        child: RaisedButton(
          onPressed: () => {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Color.fromRGBO(0, 0, 0, 0),
              )),
          child: Text("Indoor Payment",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 20,
                  fontWeight: FontWeight.normal)),
          color: HexColor("F2A22C"),
        ),
      ),
    ));
  }
}
