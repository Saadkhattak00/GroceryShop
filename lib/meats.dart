import 'package:flutter/material.dart';
import 'detail.dart';

class meats extends StatefulWidget {
  static String id = 'meats';
  @override
  _meatsState createState() => _meatsState();
}

class _meatsState extends State<meats> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.white),
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'MEAT\'S & BEEF\'S',
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
                      'images/meatandfish.jpg',
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: meat(
              image: 'images/chicken.jpg',
              name: 'Chicken',
              Price: '3.00',
              colorcontainer: Color(0xFFF6D2CA),
              colortext: Color(0xFFB7906E),
              calories: '27.4g Protein',
              dozen: '1KG',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.green,
            ),
          ),
          SliverToBoxAdapter(
            child: meat(
              image: 'images/cow.jpg',
              name: 'Cow Beef',
              Price: '5.00',
              colorcontainer: Color(0xFFB93C2E),
              colortext: Color(0xFFEAA999),
              calories: '30.0g Protein',
              dozen: '1KG',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.green,
            ),
          ),
          SliverToBoxAdapter(
            child: meat(
              image: 'images/fish.jpg',
              name: 'Fish',
              Price: '4.99',
              colorcontainer: Color(0xFFFD855E),
              colortext: Color(0xFF7D89A0),
              calories: '22.0g Protein',
              dozen: '1KG',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.green,
            ),
          ),
          SliverToBoxAdapter(
            child: meat(
              image: 'images/goat.jpg',
              name: 'Goat Beef',
              Price: '7.49',
              colorcontainer: Color(0xFFCF6D75),
              colortext: Color(0xFFEDE3E1),
              calories: '27.4g Protein',
              dozen: '1KG',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.green,
            ),
          ),
        ],
      ),
    ));
  }
}

class meat extends StatelessWidget {
  String image;
  String Price;
  String calories;
  String name;
  Color colorcontainer;
  Color colortext;
  String dozen;
  var icon;
  Color iconcolor;
  meat(
      {this.name,
      this.iconcolor,
      this.image,
      this.Price,
      this.calories,
      this.colorcontainer,
      this.colortext,
      this.dozen,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return detail(
            image: image,
            name: name,
            icon: icon,
            calories: calories,
            iconcolor: iconcolor,
            Price: Price,
            dozen: dozen,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 0.7),
                    blurRadius: 10.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey)),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, left: 12, right: 8, bottom: 8),
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.7, 0.7),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                fit: BoxFit.cover, image: AssetImage(image))),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Stack(children: [
                      Positioned(
                        top: 5,
                        right: 80,
                        child: Container(
                          child: Text(
                            name,
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'AmaticSC'),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 62,
                        left: 20,
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
                                icon,
                                color: iconcolor,
                                size: 30,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                calories,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 17,
                        left: 20,
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: colorcontainer,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 50,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    dozen,
                                    style: TextStyle(
                                        color: colortext, fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                '\$',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 15),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                Price,
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            )),
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
