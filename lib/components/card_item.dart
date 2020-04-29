import 'package:flutter/material.dart';
import 'package:bivouac/screens/details_screen.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key key, this.photo, this.onTap, this.height})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double height;

  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  CardItem({
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.image,
    @required this.onPressed,
  });

  final String title;
  final String description;
  final String price;
  final String image;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.70 * MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Hero(
            tag: "card-" + title,
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
            child: Container(
              margin: EdgeInsets.only(
                top: 14.0,
                bottom: 14.0,
                right: 0.1 * MediaQuery.of(context).size.width,
                left: 10.0,
              ),
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.05,
                  MediaQuery.of(context).size.height * 0.04,
                  0.0,
                  MediaQuery.of(context).size.height * 0.02),
              //width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 0.5, // has the effect of extending the shadow
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/card_item_bg.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color.fromRGBO(227, 40, 40, 0.4),
                    BlendMode.colorBurn,
                  ),
                ),
                borderRadius: BorderRadius.all(
                  const Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title.toUpperCase(),
                          style: TextStyle(
                            fontSize: 28.0,
                            fontFamily: "Gallicide",
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Nexa",
                            color: Colors.white.withOpacity(0.8),
                            height: 1.3,
                          ),
                        ),
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: "BebasNeue",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionsBuilder: (c, anim, a2, child) =>
                                FadeTransition(opacity: anim, child: child),
                            transitionDuration: Duration(milliseconds: 600),
                            pageBuilder: (_, __, ___) =>
                                DetailsScreen(tag: "card-" + title),
                          ),
                        );
                      },
                      child: Image.asset(
                        "assets/icons/add.png",
                        scale: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            //height: MediaQuery.of(context).size.height * 0.7,
            right: 0.0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Hero(
                tag: image,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
