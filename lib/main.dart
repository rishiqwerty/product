import 'package:corona/Pages/cart_page.dart';
import 'package:corona/Pages/lo.dart';
import 'package:corona/Pages/lojin.dart';
import 'package:corona/Pages/login.dart';
import 'package:corona/Pages/home_page.dart';
import 'package:corona/core/store.dart';
import 'package:corona/utils/Routes.dart';
import 'package:corona/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
    store: MyStore(),
    child: TutorialHome()));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeWid.lightTheme(context),
      darkTheme: ThemeWid.darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.loginRoute: (context) => LogP(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
