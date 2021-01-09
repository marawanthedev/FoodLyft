import 'package:flutter/material.dart';
import '../../screens/Restaurantlist/Constants.dart';

class FoodMenu extends StatefulWidget {
  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: ListView(
          children: <Widget>[
            Stack(
              children: [
                Image.asset(
                  'assets/images/Hayfa.png',
                  width: 600.0,
                  height: 240.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Center(
                    child: TextBuild(text: "Hello", fontsize: 30),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: SingleChildScrollView(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.yellow[50],
                                    offset: Offset(4, 10),
                                    blurRadius: 20)
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/images/kfc.png",
                                width: 50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextBuild(
                            text: "Appetizers",
                            color: black,
                            fontsize: 14,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextBuild extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double fontsize;
  final Color color;

  TextBuild({@required this.text, this.weight, this.fontsize, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: weight, fontSize: fontsize, color: color),
    );
  }
}
