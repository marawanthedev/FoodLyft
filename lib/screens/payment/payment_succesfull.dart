import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/hexColor.dart';
import '../../providers/restaurants.provider.dart';

class PaymentSuceeded extends StatefulWidget {
  @override
  _PaymentSuceededState createState() => _PaymentSuceededState();

  final paymentInfo;

  PaymentSuceeded(this.paymentInfo);

  double amount = 22.3;
  // String dollarSign="'$'";
  String mainFont = "Roboto-regular";
  var colors = {
    "darkBlue": HexColor("6E7A99"),
    "black": Colors.black,
    "darkBlue-2": HexColor("596273"),
    "grey": HexColor("929AA9")
  };
}

class _PaymentSuceededState extends State<PaymentSuceeded> {
  void _navigate() {
    Navigator.pushNamed(context, "/payment_form");
  }

  @override
  Widget build(BuildContext context) {
    final testProvider = Provider.of<Restaurants>(context);
    print(testProvider.items);
    return Container(
      padding: new EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 75),
          SizedBox(
            height: 25,
            width: 225,
            child: Text(
              "Payment has suceeded Mr.${widget.paymentInfo['card-holder-name']}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: widget.mainFont,
                color: widget.colors['black'],
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(
            height: 75,
            width: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Interactively expedite revolutionary ROI after bricks-and-clicks alignments.",
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: widget.mainFont,
                      color: widget.colors['darkBlue'],
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: Image(
              image: AssetImage("assets/images/sucess.png"),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
              height: 100,
              width: 300,
              child: Column(
                children: [
                  SizedBox(
                      height: 25,
                      child: Text(
                        "\$ ${widget.amount} Amount ",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: widget.mainFont,
                            color: widget.colors['darkBlue-2'],
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold),
                      )),
                  Text(
                    "was deducted from your card",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: widget.mainFont,
                        color: widget.colors['darkBlue-2'],
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          SizedBox(
            height: 100,
            width: 300,
            child: Text(
              "Declaration: scale turnkey outsourcing after multidisciplinary leadership skills. Interactively engineer 24/7 paradigms vis-a-vis cross functional value. Conveniently streamline distinctive bandwidth through vertical imperatives. Progressively drive.",
              style: TextStyle(
                  fontSize: 10,
                  fontFamily: widget.mainFont,
                  color: widget.colors['grey'],
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: RaisedButton(
              onPressed: () => _navigate(),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: Color.fromRGBO(0, 0, 0, .5),
                  )),
              child: Text("Shop Again",
                  style: TextStyle(
                      color: widget.colors['darkBlue-2'],
                      fontFamily: widget.mainFont)),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
