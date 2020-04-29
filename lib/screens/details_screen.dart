import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bivouac/components/card_item.dart';
import 'package:bivouac/components/details_item.dart';
import 'package:bivouac/screens/home_screen.dart';
import 'package:bivouac/constants.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key key, @required String this.tag}) : super(key: key);

  final String tag;
  static const String id = 'details_screen';

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        "assets/icons/points.png",
                        scale: 2.0,
                      ),
                      /*Icon(
                        Icons.arrow_back,
                        color: Color.fromRGBO(248, 46, 46, 1.0),
                        size: 27.0,
                      ),*/
                    ),
                    /*Image.asset(
                      "assets/icons/points.png",
                      scale: 2.0,
                    ),*/
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
                height: MediaQuery.of(context).size.height * 0.8,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  border: Border.all(
                    color: Color.fromRGBO(227, 40, 40, 0.4),
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(25.0),
                    topLeft: const Radius.circular(25.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/card_item_bg.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Color.fromRGBO(227, 40, 40, 0.4),
                      BlendMode.colorBurn,
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.1,
                        MediaQuery.of(context).size.height * 0.04,
                        MediaQuery.of(context).size.width * 0.1,
                        0.0,
                      ),
                      child: Text(
                        "Cheese naan".toUpperCase(),
                        style: TextStyle(
                          fontSize: 32.0,
                          fontFamily: "Gallicide",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03,
                        ),
                        padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.05,
                          MediaQuery.of(context).size.height * 0.09,
                          MediaQuery.of(context).size.width * 0.05,
                          0.0,
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
                        child: SingleChildScrollView(
                          padding: EdgeInsets.only(
                            //top: MediaQuery.of(context).size.height * 0.08,
                            bottom: MediaQuery.of(context).size.height * 0.08,
                          ),
                          child: Column(
                            children: kSandwichDetails.map((detailsItem) {
                              return DetailsItem(
                                title: detailsItem["title"],
                                icon: detailsItem["icon"],
                                items: detailsItem["items"],
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.35,
              top: MediaQuery.of(context).size.height * 0.16,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.015,
                  vertical: MediaQuery.of(context).size.height * 0.009,
                ),
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 2.0, // has the effect of softening the shadow
                      spreadRadius:
                          0.1, // has the effect of extending the shadow
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.remove_circle,
                      color: Colors.black,
                      size: 15.0,
                    ),
                    Text(
                      1.toString(),
                    ),
                    Icon(
                      Icons.add_circle,
                      color: Colors.black,
                      size: 15.0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width * 0.1,
              top: MediaQuery.of(context).size.height * 0.04,
              child: Hero(
                tag: "assets/images/cheese_naan.png",
                child: Image.asset(
                  "assets/images/cheese_naan.png",
                  scale: 6.0,
                ),
              ),
            ),
          ],
        ));
  }
}
