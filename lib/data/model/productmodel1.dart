// ignore: camel_case_types
class ProductModel {
  int? id;
  String? name;
  double? price;
  String? img;
  String? color;
  String? size;
  String? status;
  int? catId;
  String? catName;

  //constructor
  ProductModel(
      {this.id,
      this.name,
      this.price,
      this.img,
      this.color,
      this.size,
      this.status,
      this.catId,
      this.catName});
  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    price = json["price"];
    img = json["img"];
    color = json["color"];
    size = json["size"];
    status = json["status"];
    catId = json["catId"];
    catName = json["catName"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["price"] = price;
    data["img"] = img;
    data["color"] = color;
    data["size"] = size;
    data["status"] = status;
    data["catId"] = catId;
    data["catName"] = catName;
    return data;
  }
}
