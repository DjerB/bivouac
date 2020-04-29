import 'package:flutter/material.dart';

class DetailsItem extends StatelessWidget {
  DetailsItem({
    @required this.title,
    @required this.icon,
    @required this.items,
  });

  final String title;
  final String icon;
  final List items;

  @override
  Widget build(BuildContext context) {
    Row itemsWidget;
    if (items.length > 3) {
      Column firstCol = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
            items.sublist(0, items.length ~/ 2 + items.length % 2).map((item) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Row(
              children: <Widget>[
                Image.asset(
                  item["icon"],
                  scale: 3.0,
                ),
                Text(
                  item["name"].toUpperCase(),
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "BebasNeue",
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      );
      Column secondCol = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
            items.sublist(items.length ~/ 2 + items.length % 2).map((item) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Row(
              children: <Widget>[
                Image.asset(
                  item["icon"],
                  scale: 3.0,
                ),
                Text(
                  item["name"].toUpperCase(),
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "BebasNeue",
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      );
      itemsWidget = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          firstCol,
          secondCol,
        ],
      );
    } else {
      itemsWidget = Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.07,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    item["icon"], //"assets/icons/salad.png",
                    scale: 3.0,
                  ),
                  Text(
                    item["name"].toUpperCase(),
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "BebasNeue",
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            );
          }).toList());
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            width: 2.0,
            color: Color.fromRGBO(112, 112, 112, 1),
          ),
        ),
        borderRadius: BorderRadius.all(
          const Radius.circular(15.0),
        ),
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
      ),
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.02,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Color.fromRGBO(223, 67, 67, 1.0),
              fontFamily: "Bison",
              fontSize: 20.0,
            ),
          ),
          itemsWidget,
        ],
      ),
    );
  }
}
