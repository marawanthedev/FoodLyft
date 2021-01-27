import 'package:flutter/material.dart';
import "./helpers/dependencies.dart";
import "../../services/firebase/firebase_service.dart";

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

  void getData() async {}
  @override
  Widget build(BuildContext context) {
    print("payment formss");

    

    return Container(
        height: 100,
        color: Colors.white,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(170),
            child: PreferredSize(
              child: CustomAppBar(controller),
              preferredSize: Size.fromHeight(200),
            ),
          ),
          body: TabBarView(
            controller: controller,
            children: [
              VisaCardPayment(),
              MasterCardPayment(),
              CashPayment(),
            ],
          ),
        ));
  }
}
