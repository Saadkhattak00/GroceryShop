import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_menu/main_page.dart';

// ignore: camel_case_types
class welcome_page extends StatefulWidget {
  static String id = 'welcome_page';
  @override
  _welcome_pageState createState() => _welcome_pageState();
}

class _welcome_pageState extends State<welcome_page>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation _offsetAnimation;
  Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 4500), () {
      Navigator.pushNamed(context, main_page.id);
    });
    controller = AnimationController(
        duration: Duration(milliseconds: 2500), vsync: this);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
    _offsetAnimation = Tween(begin: Offset(-1, 1), end: Offset(0, 1))
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
    animation = Tween(begin: Offset(1, -1), end: Offset(0, 1))
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
  }

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/grocerywelcome.jpg'))),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SlideTransition(
                position: animation,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Center(
                    child: Container(
                      child: Text(
                        'GROCERY STORE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 80,
                            fontFamily: 'AmaticSC',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.lightBlue, Colors.grey]),
                        borderRadius: BorderRadius.circular(30)),
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, main_page.id);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WELCOME',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
