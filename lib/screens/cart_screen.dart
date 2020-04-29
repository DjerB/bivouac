import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bivouac/components/card_item.dart';
import 'package:bivouac/components/details_item.dart';
import 'package:bivouac/screens/home_screen.dart';
import 'package:bivouac/constants.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key key, @required String this.tag}) : super(key: key);

  final String tag;
  static const String id = 'details_screen';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.tag);
    return Scaffold(
        appBar: PreferredSize(
          child: SafeArea(
            child: AppBar(
              elevation: 0.0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
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
                    /*Image.asset(
                      "assets/icons/points.png",
                      scale: 2.0,
                    ),*/
                    Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(235, 89, 67, 1.0),
                      size: 24.0,
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
        body: Stack(
          children: <Widget>[
            Hero(
              tag: widget.tag,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.028, //20.0,
                      ),
                      height: MediaQuery.of(context).size.height * 0.8,
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1,
                        vertical:
                            5.0, //MediaQuery.of(context).size.height * 0.05,
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
                      child: Column(
                        children: <Widget>[
                          Row(
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
          ],
        ));
  }
}
