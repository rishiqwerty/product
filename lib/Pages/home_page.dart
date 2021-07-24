import 'package:corona/core/store.dart';
import 'package:corona/models/cart.dart';
import 'package:corona/models/catalog.dart';
import 'package:corona/utils/Routes.dart';
import 'package:corona/widgets/drawers.dart';
import 'package:corona/widgets/item_widget.dart';
import 'package:corona/pages/home_widgets/catalog_header.dart';
import 'package:corona/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'home_widgets/catalog_lists.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final url = "https://firebasestorage.googleapis.com/v0/b/myapp-ae8b3.appspot.com/o/catalog.json?alt=media&token=bbe6a0b6-ae92-483f-a9d4-19ede5d7ae49";
  final String name = 'Home';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final catalogJson = response.body;
      //await rootBundle.loadString("assets/files/catalog.json");
      final decodedData = jsonDecode(catalogJson);
      var productsData = decodedData["products"];
      CatalogApp.items = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {});
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        floatingActionButton: VxBuilder(
            mutations: {AddMutation, RemoveMutation},
            builder: (ctx, _) => FloatingActionButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, MyRoutes.cartRoute),
                  child: Icon(CupertinoIcons.cart, color: Colors.white),
                  backgroundColor: context.theme.buttonColor,
                ).badge(
                    color: Vx.red500,
                    size: 20,
                    count: _cart.items.length,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ))),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogApp.items != null && CatalogApp.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}
