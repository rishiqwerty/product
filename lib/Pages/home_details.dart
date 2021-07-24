import 'package:corona/Pages/home_widgets/add_to_cart.dart';
import 'package:corona/models/catalog.dart';
import 'package:corona/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  @override
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
              color: context.cardColor,
              child: ButtonBar(alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                "\₹ ${catalog.price}".text.xl3.color(context.primaryColor).bold.make(),


                AddToCart(catalog: catalog,).wh(130,50),
              ],).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero( 
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .centered().h32(context),
            Expanded(child: VxArc(
              height:25.0,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                width: context.screenWidth,
                color:context.cardColor,
                child: Column(children: [
                  catalog.name.text.xl3.bold.color(context.accentColor).make(),
            catalog.descrp.text.textStyle(context.captionStyle).make(),
            10.heightBox,
              "Subscribe to Freaky Gadgets! Subscribe to Freaky Gadgets! Subscribe to Freaky Gadgets! Subscribe to Freaky Gadgets! Subscribe to Freaky Gadgets! Subscribe to Freaky Gadgets! Subscribe to Freaky Gadgets! Subscribe to Freaky Gadgets!".text.textStyle(context.captionStyle).make().p24(),
                ],).py64(),
              )
              ),
              ),
          ],
        ),
      ),
    );
  }
}
