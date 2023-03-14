class Food {
  final int id;
  final String code;
  final String name;
  final String image;
  final String description;
  final String price;
  Food(this.id, this.code, this.name, this.image, this.description, this.price);

  Food.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        code = json['code'],
        name = json['name'],
        image = json['image'],
        description = json['description'],
        price = json['price'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'code': code,
        'name': name,
        'image': image,
        'description': description,
        'price': price
      };
}
