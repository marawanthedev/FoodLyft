class MenuItems {
  String itemName;
  String description;
  double price;
  String resturantId;
  // List items = [];

  // MenuItems({this.items});

  MenuItems({this.itemName, this.description, this.price, this.resturantId});

  // MenuItems.fromJson(Map<String, dynamic> json)
  //     : this(
  //         resturantId: json['restaurantId'],
  //         itemName: json['name'],
  //         description: json['description'],
  //         price: json['price'],
  //       );
}
