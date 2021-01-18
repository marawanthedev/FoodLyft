import 'package:flutter/material.dart';
import 'package:foodlyft/screens/Restaurantlist/Constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ItemTitle extends StatelessWidget {
  final int numOfReviews;
  final double price;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;

  ItemTitle({
    this.numOfReviews,
    this.rating,
    this.price,
    this.name,
    this.onRatingChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    SmoothStarRating(
                      borderColor: appMainColor,
                      color: appMainColor,
                      rating: rating,
                      onRated: onRatingChanged,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("$numOfReviews  reviews"),
                  ],
                ),
              ],
            ),
          ),
          priceTag(context, price: price),
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, {double price}) {
    return ClipPath(
      clipper: PricerCliper(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical: 15),
        height: 66,
        width: 65,
        color: appMainColor,
        child: Text(
          "\Rm$price",
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
