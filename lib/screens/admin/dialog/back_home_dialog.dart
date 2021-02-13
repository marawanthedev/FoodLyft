import 'package:flutter/material.dart';
import 'package:foodlyft/components/button.dart';
import '../../../services/general/hexColor.dart';

class Back_Home_Dialog extends StatefulWidget {
  @override
  _Back_Home_DialogState createState() => _Back_Home_DialogState();
}

class _Back_Home_DialogState extends State<Back_Home_Dialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        height: 350,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/images/google.png',
              height: 120,
              width: 120,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            child: Text(
              'Bilad AlRafedin added succesfully',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
            RaisedButton(
              color: HexColor('F2A22C'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                'Go Back To Home',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    backgroundColor: HexColor('F2A22C')),
              ),
              onPressed: () {},
            ),
          ])
        ]),
      );
}
