import 'package:flutter/material.dart';
import 'package:hotel_menu/bakingitems.dart';
import 'package:hotel_menu/breads.dart';
import 'package:hotel_menu/coffeeandtea.dart';
import 'package:hotel_menu/dairys.dart';
import 'package:hotel_menu/detail.dart';
import 'package:hotel_menu/meats.dart';
import 'package:hotel_menu/sauceandoil.dart';
import 'package:hotel_menu/snacks.dart';
import 'package:hotel_menu/vegetables.dart';
import 'package:hotel_menu/main_page.dart';
import 'package:hotel_menu/welcome_page.dart';
import 'fruits.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: welcome_page.id, routes: {
      welcome_page.id: (context) => welcome_page(),
      main_page.id: (context) => main_page(),
      vegetables.id: (context) => vegetables(),
      fruits.id: (context) => fruits(),
      meats.id: (context) => meats(),
      detail.id: (context) => detail(),
      dairys.id: (context) => dairys(),
      breads.id: (context) => breads(),
      sauceandoil.id: (context) => sauceandoil(),
      bakingitems.id: (context) => bakingitems(),
      snacks.id: (context) => snacks(),
      coffeeandtea.id: (context) => coffeeandtea(),
    });
  }
}
