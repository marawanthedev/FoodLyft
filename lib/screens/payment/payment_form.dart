import 'package:flutter/material.dart';
import "./helpers/dependencies.dart";

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
