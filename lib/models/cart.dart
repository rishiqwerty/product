import 'package:corona/core/store.dart';
import 'package:corona/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  CatalogApp _catalog;

  final List<int> _itemsIds = [];

  CatalogApp get catalog => _catalog;

  set catalog(CatalogApp newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items in cart
  List<Item> get items => _itemsIds.map((id) => _catalog.getById(id)).toList();
  //Get Total price

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store.cart._itemsIds.add(item.id);
  }
}
class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store.cart._itemsIds.remove(item.id);
  }
}