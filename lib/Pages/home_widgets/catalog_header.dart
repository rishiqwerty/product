import 'package:corona/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "CatalogApp".text.xl5.bold.color(context.theme.accentColor).make(),
        "Products".text.xl2.make(),
      ],
    );
  }
}
