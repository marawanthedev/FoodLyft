class MenuItems {
  String itemName;
  String description;
  double price;
  String resturantId;
  String image;
  // List items = [];

  // MenuItems({this.items});

  MenuItems({this.itemName, this.description, this.price, this.resturantId,this.image});

   MenuItems.fromJson(Map<String, dynamic> json)
       : this(
           resturantId: json['restaurantId'],
           itemName: json['name'],
           description: json['description'],
           price: json['price'],
         );
   Map<String,dynamic> toJson() =>{'restaurantId':resturantId,'name':itemName,'description':description,'price':price};      
}
