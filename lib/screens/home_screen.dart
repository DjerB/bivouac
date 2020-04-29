import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bivouac/screens/cart_screen.dart';
import 'package:bivouac/components/card_item.dart';
import 'package:bivouac/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: SafeArea(
            child: AppBar(
              elevation: 0.0,
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
              flexibleSpace: Padding(
                padding: EdgeInsets.fromLTRB(
                  20.0,
                  15.0,
                  20.0,
                  2.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/icons/points.png",
                      scale: 2.0,
                    ),
                    Image.asset(
                      "assets/icons/logo.png",
                      scale: 3.0,
                    ),
                    Image.asset(
                      "assets/icons/people.png",
                      scale: 2.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              child: DefaultTabController(
                length: 4,
                child: Scaffold(
                  appBar: PreferredSize(
                    preferredSize: Size.fromHeight(
                      MediaQuery.of(context).size.height * 0.13,
                    ),
                    child: AppBar(
                      titleSpacing: 40.0,
                      elevation: 0,
                      backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
                      flexibleSpace: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                              left: 40.0,
                            ),
                            child: Text(
                              "Menu".toUpperCase(),
                              style: TextStyle(
                                color: Color.fromRGBO(32, 30, 30, 1),
                                fontFamily: "Gallicide",
                                fontSize: 35.0,
                              ),
                            ),
                          ),
                          TabBar(
                            unselectedLabelColor:
                                Color.fromRGBO(165, 165, 165, 1),
                            unselectedLabelStyle: TextStyle(
                              fontFamily: "Cocogoose",
                              fontSize: 17.0,
                            ),
                            isScrollable: true,
                            //indicatorPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorWeight: 3.0,
                            indicatorColor: Color.fromRGBO(32, 30, 30, 1),
                            labelColor: Color.fromRGBO(32, 30, 30, 1),
                            labelStyle: TextStyle(
                              fontSize: 17.0,
                              fontFamily: "Cocogoose",
                            ),
                            tabs: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Text("Sandwiches".toUpperCase()),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text("Bols".toUpperCase()),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text("Boissons".toUpperCase()),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text("Desserts".toUpperCase()),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  body: TabBarView(
                    children: [1, 2, 3, 4].map((i) {
                      return CarouselSlider(
                          enlargeCenterPage: true,
                          viewportFraction: 0.8,
                          aspectRatio: 1.1,
                          items: kCards.map((details) {
                            return CardItem(
                              title: details["title"],
                              description: details["description"],
                              price: details["price"],
                              image: details["image"],
                              onPressed: () {
                                print('clicked');
                              },
                            );
                          }).toList());
                    }).toList(),
                  ),
                ),
              ),
            ),
            Hero(
                tag: "cart",
                flightShuttleBuilder: (
                  BuildContext flightContext,
                  Animation<double> animation,
                  HeroFlightDirection flightDirection,
                  BuildContext fromHeroContext,
                  BuildContext toHeroContext,
                ) {
                  return DefaultTextStyle(
                    style: DefaultTextStyle.of(toHeroContext).style,
                    child: toHeroContext.widget,
                  );
                },
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 500),
                          pageBuilder: (_, __, ___) => CartScreen(tag: "cart"),
                        ),
                      );
                    },
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.028,
                            ),
                            height: MediaQuery.of(context).size.height *
                                0.11, //80.0,
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.1,
                              vertical: 5.0,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              border: Border.all(
                                color: Color.fromRGBO(250, 250, 250, 1),
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: const Radius.circular(25.0),
                                topLeft: const Radius.circular(25.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[400],
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      0.5, // has the effect of extending the shadow
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Total".toUpperCase(),
                                  style: TextStyle(
                                    fontFamily: "Bison",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                  ),
                                ),
                                Text(
                                  "8.00",
                                  style: TextStyle(
                                    fontFamily: "Bison",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0.0,
                            left: MediaQuery.of(context).size.width * 0.41,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: ShapeDecoration(
                                    color: Color.fromRGBO(250, 250, 250, 1.0),
                                    shape: CircleBorder(
                                      side: BorderSide(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.grey[400],
                                        blurRadius:
                                            10.0, // has the effect of softening the shadow
                                        spreadRadius:
                                            0.5, // has the effect of extending the shadow
                                        offset: Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    "assets/icons/cart.png",
                                    scale: 2.0,
                                  ),
                                ),
                                Image.asset(
                                  "assets/icons/smile.png",
                                  scale: 4.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ));
  }
}
