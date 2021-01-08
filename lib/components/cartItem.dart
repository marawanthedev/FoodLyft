import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String title;
  String image;
  final bool isTouched;
  final Function press;
  var color, appMainColor;
  CartItem(
      {this.title,
      this.isTouched = false,
      this.press,
      this.image,
      this.color,
      this.appMainColor});

  @override
  Widget build(BuildContext context) {
    Widget getTextWidgets(List<String> strings) {
      List<Widget> list = new List<Widget>();
      for (var i = 0; i < strings.length; i++) {
        list.add(new Text(strings[i]));
      }
      return new Row(children: list);
    }

    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          child: Column(
            children: <Widget>[
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Image(
                          image: AssetImage(image),
                          height: 100,
                          width: 95,
                          fit: BoxFit.fill),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          title,
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 17.5),
                        ),
                        Text("2",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17.5,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          child: FlatButton(
                            onPressed: () => {},
                            child: Image.asset(
                              'assets/images/delete.png',
                              width: 15,
                              height: 20,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          height: 40,
                          child: Text("\$ 41.90",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              if (isTouched)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  height: 3,
                  width: 20,
                  decoration: BoxDecoration(color: appMainColor),
                )
            ],
          ),
        ),
      ),
    );
  }
}
