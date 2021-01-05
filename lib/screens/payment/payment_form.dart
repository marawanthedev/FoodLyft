import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "./Tabs/cash.dart" as cashTab;
import "./Tabs/masterCard.dart" as masterCardTab;
import "./Tabs/visaCard.dart" as visaCardTab;
import "../../services/hexColor.dart";
import "../../services/pictureWidget.dart";

class PaymentForm extends StatefulWidget {
  @override
  _PaymentFormState createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Colors.white,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            title: Text("Payment", style: TextStyle(color: Colors.black)),
            bottom: TabBar(
              indicatorColor: HexColor("008000"),
              indicatorWeight: 1,
              unselectedLabelColor: Colors.red,
              indicator: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 2, color: HexColor("008000")))),
              controller: controller,
              tabs: <Widget>[
                Tab(
                    child: Container(
                  height: 40,
                  padding: EdgeInsets.only(top: 5),
                  child: Image(
                    image: AssetImage("assets/images/visa.png"),
                  ),
                )),
                Tab(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.only(top: 5),
                    child: Image(
                      image: AssetImage("assets/images/mastercard.png"),
                    ),
                  ),
                ),
                Tab(
                    child: Container(
                  height: 50,
                  padding: EdgeInsets.only(top: 5),
                  child: Image(
                    image: AssetImage("assets/images/cash.png"),
                  ),
                ))
              ],
            ),
          ),
          body: TabBarView(
            controller: controller,
            children: [
              visaCardTab.VisaCardPayment(),
              masterCardTab.MasterCardPayment(),
              cashTab.CashPayment(),
            ],
          ),
        ));
  }
}

//  SizedBox(
//           height: 50,
//         ),
//         Container(
//           height: 30,
//           alignment: Alignment.centerLeft,
//           child: Text(
//             "Payment",
//             style: TextStyle(
//                 fontSize: 24,
//                 color: Colors.black,
//                 fontFamily: "Roboto",
//                 decoration: TextDecoration.none,
//                 fontWeight: FontWeight.normal),
//           ),
//         ),
