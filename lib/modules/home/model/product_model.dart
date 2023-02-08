class ProductModel {
  late int id;
  late String title;
  late int price;
  late String description;
  late List<dynamic> images;
  late Map<String, dynamic> category;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.images,
      required this.category});

  ProductModel.fromJson(Map<String, dynamic> element) {
    id = element["id"] as int;
    title = element["title"] as String;
    price = element["price"] as int;
    description = element["description"];
    images = element["images"] as List<dynamic>;
    category = element["category"] as Map<String, dynamic>;
  }
}
