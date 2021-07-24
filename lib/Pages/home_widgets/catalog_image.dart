import 'package:corona/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class CatalogImage extends StatelessWidget {
  @override
  final String image;

  const CatalogImage({Key key, @required this.image})
      : assert(image != null),
        super(key: key);

  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .p16()
        .w40(context);
  }
}
