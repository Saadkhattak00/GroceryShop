import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_menu/bakingitems.dart';
import 'package:hotel_menu/breads.dart';
import 'package:hotel_menu/coffeeandtea.dart';
import 'package:hotel_menu/dairys.dart';
import 'package:hotel_menu/detail.dart';
import 'package:hotel_menu/fruits.dart';
import 'package:hotel_menu/meats.dart';
import 'package:hotel_menu/sauceandoil.dart';
import 'package:hotel_menu/snacks.dart';
import 'package:hotel_menu/vegetables.dart';

// ignore: camel_case_types
class main_page extends StatefulWidget {
  static String id = 'main_page';
  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: CustomScrollView(slivers: [
              SliverAppBar(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
                backgroundColor: Colors.transparent,
                expandedHeight: 200,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    'Grocery Store',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'AmaticSC',
                        fontWeight: FontWeight.bold),
                  ),
                  background: ClipPath(
                    clipper: clip(),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'images/START.jpg',
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  child: title(
                text: 'FOOD ITEMS',
              )),
              SliverToBoxAdapter(
                child: Container(
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, vegetables.id);
                        },
                        child: firstlistview(
                          image: 'images/vegetable.jpg',
                          text: 'VEGETABLES',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, fruits.id);
                        },
                        child: firstlistview(
                          image: 'images/fruits.jpg',
                          text: 'FRUITS',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, meats.id);
                        },
                        child: firstlistview(
                          image: 'images/meatandfish.jpg',
                          text: 'MEAT\'S & BEEF\'S',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: title(
                  text: 'COFFEE & TEA',
                ),
              ),
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, coffeeandtea.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 210,
                        width: MediaQuery.of(context).size.width,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 0),
                                  blurRadius: 8.0,
                                  spreadRadius: 7,
                                )
                              ],
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/cof&tea.jpg'))),
                        )),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  child: title(
                text: 'OTHERS',
              )),
              SliverToBoxAdapter(
                child: Container(
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, dairys.id);
                        },
                        child: thirdlistview(
                          image: 'images/dairy.jpg',
                          text: 'DAIRYS',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, breads.id);
                        },
                        child: thirdlistview(
                          image: 'images/breads.jpg',
                          text: 'BREADS',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, sauceandoil.id);
                        },
                        child: thirdlistview(
                          image: 'images/souceoil.jpg',
                          text: 'SAUCES & OIL',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, bakingitems.id);
                        },
                        child: thirdlistview(
                          image: 'images/baking.jpg',
                          text: 'BAKING ITEMS',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, snacks.id);
                        },
                        child: thirdlistview(
                          image: 'images/snacks.jpg',
                          text: 'SNACKS & MORE',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ])));
  }
}

class thirdlistview extends StatelessWidget {
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 180,
        height: 200,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(-3, 0),
                blurRadius: 4.0,
                spreadRadius: 5.5,
              )
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.zero,
                topLeft: Radius.zero,
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.zero,
                        topLeft: Radius.zero,
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  width: 180,
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'AmaticSC',
                          fontSize: 40),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  thirdlistview({this.image, this.text});
}

class title extends StatelessWidget {
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontFamily: 'AmaticSC',
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  title({this.text});
}

class firstlistview extends StatelessWidget {
  String image;
  String text;

  firstlistview({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 180,
        height: 200,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(-3, 0),
                blurRadius: 4.0,
                spreadRadius: 5.5,
              )
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 180,
                  color: Colors.black38,
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'AmaticSC',
                          fontSize: 40),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class clip extends CustomClipper<Path> {
  @override
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    var controlPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    var pointEnd = Offset(size.width, size.height + 100);
    var pointControl = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.quadraticBezierTo(
        pointControl.dx, pointControl.dy, pointEnd.dx, pointEnd.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
