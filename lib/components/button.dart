import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  var formKey,buttonText,backgroundColor,onPressed,setState;

  customButton({this.backgroundColor, this.buttonText, this.formKey,this.onPressed,this.setState});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        // Validate returns true if the form is valid, otherwise false.
        if (formKey.currentState.validate()) {
          // If the form is valid, display a snackbar. In the real world,
          // you'd often call a server or save the information in a database.

          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(
              'Processing Data',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: backgroundColor,
            
          ));
          setState();
        }
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0),
          )),
      child: Text("Confirm Payment",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal,
              fontSize: 20)),
      color: backgroundColor,
    );
  }
}
