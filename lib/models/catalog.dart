class CatalogApp {
  
  static List<Item> items;

  //get Item by id
 Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //get Iem by position
 Item getByPosition(int pos) => items[pos];
}

class Item {
  final num id;
  final num price;
  final String name;
  final String descrp;
  final String color;
  final String image;

  Item({this.id, this.price, this.color, this.image, this.descrp, this.name});
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      descrp: map["descrp"],
      color: map["color"],
      image: map["image"],
      price: map["price"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "color": color,
        "descrp": descrp,
        "image": image,
        "price": price,
      };
}
