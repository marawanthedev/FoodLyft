class User {
  String email, password, address, name, phoneNumber, imageSrc, id;

  User(
      {this.id,
      this.email,
      this.password,
      this.address,
      this.phoneNumber,
      this.name,
      this.imageSrc});
  User.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            email: json['email'],
            password: json['password'],
            address: json['address'],
            phoneNumber: json['phoneNumber'],
            name: json['imageSrc']);

 Map<String, dynamic> toJson() =>
      {'id': id, 'email': email, 'password':password, 'address': address,'phoneNumber': phoneNumber,'name': name}; 
                
}
