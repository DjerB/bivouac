import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  fillColor: Color.fromRGBO(240, 244, 248, 1.0),
  hintStyle: TextStyle(
    color: Color.fromRGBO(166, 188, 208, 1.0),
  ),
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const String kCheeseNaanTitle = "Cheese Naan";
const String kCheeseNaanDescription =
    "Un délicieux pain fait maison avec base, viande et sauce au choix.";
const String kCheeseNaanPrice = "7€";
const String kCheeseNaanImagePath = "assets/images/cheese_naan.png";

const String kGaletteTitle = "Galette";
const String kGaletteDescription =
    "Une galette de blé garnie d'une base, d'une protéine et d'une sauce au choix.";
const String kGalettePrice = "7€";
const String kGaletteImagePath = "assets/images/galette.png";

const String kSandwichTitle = "Sandwich";
const String kSandwichDescription =
    "Un pain pita garni d'une base, d'une protéine et d'une sauce au choix.";
const String kSandwichPrice = "7€";
const String kSandwichImagePath = "assets/images/pita.png";

const List kCards = [
  {
    "title": kCheeseNaanTitle,
    "description": kCheeseNaanDescription,
    "price": kCheeseNaanPrice,
    "image": kCheeseNaanImagePath
  },
  {
    "title": kGaletteTitle,
    "description": kGaletteDescription,
    "price": kGalettePrice,
    "image": kGaletteImagePath
  },
  {
    "title": kSandwichTitle,
    "description": kSandwichDescription,
    "price": kSandwichPrice,
    "image": kSandwichImagePath
  },
];

// DETAILS

const String kSandwichBaseTitle = "Choisis une base";
const List kSandwichBaseItems = [
  {
    "icon": "assets/icons/salad.png",
    "name": "Salade",
  },
  {
    "icon": "assets/icons/onion.png",
    "name": "Oignons",
  },
  {
    "icon": "assets/icons/tomatoe.png",
    "name": "Tomates",
  },
];

const String kSandwichProtTitle = "Tes protéines";
const String kSandwichProtIcon = "assets/icons/protsup.png";
const List kSandwichProtItems = [
  {
    "icon": "assets/icons/salad.png",
    "name": "Shawarma",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Poulet mariné",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Falafels",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Kefta",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Steak haché",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Steak veggie",
  },
];

const kSandwichSauceTitle = "Et une sauce";
const kSandwichSauceItems = [
  {
    "icon": "assets/icons/salad.png",
    "name": "Blanche",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Algérienne",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Curry",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Harissa",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Mayonnaise",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Ketchup",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Biggy",
  },
  {
    "icon": "assets/icons/salad.png",
    "name": "Samouraï",
  },
];

const List kSandwichDetails = [
  {
    "title": kSandwichBaseTitle,
    "icon": null,
    "items": kSandwichBaseItems,
  },
  {
    "title": kSandwichProtTitle,
    "icon": kSandwichProtIcon,
    "items": kSandwichProtItems,
  },
  {
    "title": kSandwichSauceTitle,
    "icon": null,
    "items": kSandwichSauceItems,
  },
];
