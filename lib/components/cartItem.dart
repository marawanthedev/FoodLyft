import 'package:flutter/material.dart';
import 'package:foodlyft/services/hexColor.dart';

class CartItem extends StatelessWidget {
  final String title;
  String image;
  final bool isTouched;
  final price;
  final quantity, heroTag;
  var color, appMainColor;
  Function increaseQuantity, decreaseQuantity, deleteItem;

  CartItem(
      {this.title,
      this.isTouched = false,
      this.deleteItem,
      this.image,
      this.color,
      this.appMainColor,
      this.increaseQuantity,
      this.decreaseQuantity,
      this.quantity,
      this.price,
      this.heroTag});

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
          padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 17.5),
                        ),
                        Container(
                          width: 100,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(right: 10),
                                child: FloatingActionButton.extended(
                                  heroTag: "btn1-$heroTag",
                                  onPressed: decreaseQuantity,
                                  label: Icon(Icons.remove),
                                  icon: null,
                                  backgroundColor: HexColor("F2A22C"),
                                ),
                              ),
                              Text("$quantity",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(left: 10),
                                child: FloatingActionButton.extended(
                                  heroTag: "btn2-$heroTag",
                                  onPressed: increaseQuantity,
                                  label: Icon(Icons.add),
                                  icon: null,
                                  backgroundColor: HexColor("F2A22C"),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          child: FlatButton(
                            onPressed: deleteItem,
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
                          child: Text("\$ $price",
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
