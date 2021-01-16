import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final bool isTouched;
  final Function press;
  final Color color, appMainColor;
  CategoryItem([
    this.id,
    this.title,
    this.image,
    this.isTouched = false,
    this.press,
    this.color,
    this.appMainColor,
  ]);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 90,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
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
      footer: Padding(
        padding: const EdgeInsets.fromLTRB(22.0, 15, 22, 0),
        child: GridTileBar(
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          backgroundColor: Colors.black54,
          title: Center(
            child: Text(title,
                style: TextStyle(
                    fontSize: 20, color: color, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
