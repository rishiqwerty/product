import 'package:corona/models/cart.dart';
import 'package:corona/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogApp catalog;
  CartModel cart;

  MyStore() {
    catalog = CatalogApp();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
