import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_menu/main_page.dart';
import 'package:hotel_menu/mapping.dart';
import 'fruits.dart';
import 'vegetables.dart';
import 'meats.dart';

class detail extends StatefulWidget {
  static String id = 'detail';
  String name;
  String image;
  var icon;
  String calories;
  Color iconcolor;
  String Price;
  String dozen;

  detail(
      {this.name,
      this.dozen,
      this.image,
      this.icon,
      this.calories,
      this.iconcolor,
      this.Price});
  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.7, 0.7),
                        blurRadius: 8.0,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 - (20),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.image),
                        )),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 35,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, main_page.id);
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              color: Colors.black45,
                              offset: Offset(0, 5),
                              blurRadius: 10.0),
                        ]),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ]),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.3, 0.3),
                        blurRadius: 6.0,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'AmaticSC'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, right: 0, bottom: 8, left: 10),
                            child: Container(
                                child: Icon(
                              widget.icon,
                              color: widget.iconcolor,
                              size: 35,
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, right: 0, bottom: 8, left: 5),
                            child: Container(
                                child: Text(
                              widget.calories,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 22),
                            )),
                          ),
                          SizedBox(
                            width: 57,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, right: 0, bottom: 8, left: 10),
                                child: Container(
                                  child: Icon(
                                    Icons.star,
                                    size: 35,
                                    color: Colors.yellow.shade600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, right: 0, bottom: 8, left: 5),
                                child: Container(
                                  child: Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 25),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8, right: 12, bottom: 8, left: 12),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 24,
                          height: 120,
                          child: Text(mapping[widget.name]),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 8.0,
                              )
                            ],
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\$',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 18),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                widget.Price,
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 25),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Text(
                                widget.dozen,
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
