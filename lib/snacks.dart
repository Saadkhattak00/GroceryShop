import 'package:flutter/material.dart';
import 'detail.dart';

class snacks extends StatefulWidget {
  static String id = 'snacks';
  @override
  _snacksState createState() => _snacksState();
}

class _snacksState extends State<snacks> {
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
                'SNACK\'S & MORE',
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
                      'images/snacks.jpg',
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: snack(
              image: 'images/lay.jpg',
              name: 'Lays Chips',
              Price: '1.00',
              colorcontainer: Color(0xFF8B261A),
              colortext: Color(0xFF7CAA40),
              dozen: '1Pk',
              calories: '0.00g Protein',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.black45,
            ),
          ),
          SliverToBoxAdapter(
            child: snack(
              image: 'images/kurkure.jpg',
              name: 'Kurkure',
              Price: '1.00',
              colorcontainer: Colors.yellow,
              colortext: Color(0xFF7CAA40),
              dozen: '1Pk',
              calories: '0.01g Protein',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.black45,
            ),
          ),
          SliverToBoxAdapter(
            child: snack(
              image: 'images/dariymilk.jpg',
              name: 'DairyMilk ',
              Price: '1.59',
              colorcontainer: Colors.orange.shade400,
              colortext: Colors.white70,
              dozen: '1Br',
              calories: '0.03g Protein',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.black45,
            ),
          ),
          SliverToBoxAdapter(
            child: snack(
              image: 'images/galaxy.jpg',
              name: 'Galaxy',
              Price: '1.59',
              colorcontainer: Colors.yellow,
              colortext: Colors.brown,
              dozen: '1Br',
              calories: '0.22g Protein',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.black45,
            ),
          ),
          SliverToBoxAdapter(
            child: snack(
              image: 'images/sprite.jpg',
              name: 'Sprite',
              Price: '0.79',
              colorcontainer: Colors.yellow,
              colortext: Colors.brown,
              dozen: '1Tn',
              calories: '0.01g Protein',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.black45,
            ),
          ),
          SliverToBoxAdapter(
            child: snack(
              image: 'images/pepsi.png',
              name: 'Pepsi',
              Price: '0.79',
              colorcontainer: Colors.yellow,
              colortext: Colors.brown,
              dozen: '1Tn',
              calories: '0.01g Protein',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.black45,
            ),
          ),
          SliverToBoxAdapter(
            child: snack(
              image: 'images/coca.jpg',
              name: 'Coca Cola',
              Price: '0.79',
              colorcontainer: Colors.yellow,
              colortext: Colors.brown,
              dozen: '1Tn',
              calories: '0.01g Protein',
              icon: Icons.thumb_up_alt_outlined,
              iconcolor: Colors.black45,
            ),
          ),
        ],
      ),
    ));
  }
}

// ignore: camel_case_types, must_be_immutable
class snack extends StatelessWidget {
  String image;
  String Price;
  String calories;
  String name;
  Color colorcontainer;
  Color colortext;
  String dozen;
  var icon;
  Color iconcolor;
  snack(
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
                        right: 60,
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
