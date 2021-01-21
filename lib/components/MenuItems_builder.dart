import 'package:flutter/material.dart';
import '../screens/Restaurantlist/Constants.dart';

class ItemsBuilder extends StatelessWidget {
  final String image;
  final String itemName;
  final String desc;
  final double price;
  final int productId;

  ItemsBuilder(
      {this.image, this.itemName, this.desc, this.price, this.productId});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 100.0,
        width: width - 20.0,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                padding: EdgeInsets.only(left: 70.0, right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: white,
                ),
                height: 100.0,
                width: width - 80.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          itemName,
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          desc,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Text("\RM$price",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: appMainColor,
                          fontSize: 15.0,
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Image(
                image: AssetImage(image),
                height: 100.0,
                width: 100.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
