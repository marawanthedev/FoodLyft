import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "./Tabs/cash.dart" as cashTab;
import "./Tabs/masterCard.dart" as masterCardTab;
import "./Tabs/visaCard.dart" as visaCardTab;
import "../../services/hexColor.dart";

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
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(170),
            child: AppBar(
              toolbarHeight: 150,
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
                  Container(
                    height: 70,
                    child: Tab(
                        child: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Image(
                          image: AssetImage(
                            "assets/images/visa.png",
                          ),
                          width: 65,
                          fit: BoxFit.fill),
                    )),
                  ),
                  Container(
                    height: 70,
                    child: Tab(
                        child: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Image(
                          image: AssetImage(
                            "assets/images/mastercard.png",
                          ),
                          width: 65,
                          fit: BoxFit.fill),
                    )),
                  ),
                  Container(
                    height: 70,
                    child: Tab(
                        child: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Image(
                          image: AssetImage(
                            "assets/images/cash.png",
                          ),
                          width: 65,
                          fit: BoxFit.fill),
                    )),
                  )
                ],
              ),
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
