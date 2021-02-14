import "./helpers/dependencies.dart";

class PaymentFailed extends StatefulWidget {
  @override
  _PaymentFailedState createState() => _PaymentFailedState();

  final paymentInfo;
  PaymentFailed(this.paymentInfo);

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

class _PaymentFailedState extends State<PaymentFailed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 75),
          CustomerInfo(this.widget.paymentInfo['card-holder-name'],
              widget.mainFont, widget.colors),
          MainText(widget.mainFont, widget.colors),
          MainImage(),
          SizedBox(
            height: 25,
          ),
          PaymentInfo(widget.amount, widget.colors, widget.mainFont),
          CustomFooter(widget.mainFont, widget.colors)
        ],
      ),
    );
  }
}
