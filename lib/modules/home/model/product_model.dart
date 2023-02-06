// {
//     "id": 201,
//     "title": "New Product",
//     "price": 10,
//     "description": "A description",
//     "images": [
//         "https://placeimg.com/640/480/any",
//         "https://api.lorem.space/image/furniture?w=640&h=480&r=1109"
//     ],
//     "creationAt": "2023-02-06T09:54:45.000Z",
//     "updatedAt": "2023-02-06T09:54:45.000Z",
//     "category": {
//         "id": 1,
//         "name": "Clothes",
//         "image": "https://api.lorem.space/image/fashion?w=640&h=480&r=2422",
//         "creationAt": "2023-02-06T06:49:58.000Z",
//         "updatedAt": "2023-02-06T06:49:58.000Z"
//     }
// },

class ProductModel {
  ProductModel._();

  int? id;
  String? title;
  int? price;
  String? description;
  List<dynamic>? images;
  Map<String, dynamic>? category;

  ProductModel.fromJson(Map<String, dynamic> element) {
    id = element["id"];
    title = element["title"];
    price = element["price"];
    description = element["description"];
    images = element["images"];
    category = element["category"];
  }
}
