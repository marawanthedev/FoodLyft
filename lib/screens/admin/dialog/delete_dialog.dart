import 'package:flutter/material.dart';
import 'package:foodlyft/components/button.dart';
import '../../../services/general/hexColor.dart';

class Delete_Dialog extends StatefulWidget {
  @override
  _Delete_DialogState createState() => _Delete_DialogState();
}

class _Delete_DialogState extends State<Delete_Dialog> {
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
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Delete Bilad AlRafedin?',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: HexColor('F2A22C'))),
              child: Text(
                'Confirm',
                style: TextStyle(
                  color: HexColor('F2A22C'),
                  fontSize: 16,
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: HexColor('F2A22C'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                'Delete',
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
