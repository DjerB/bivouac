import 'package:flutter/material.dart';
import 'package:bivouac/screens/landing_screen.dart';
import 'package:bivouac/screens/registration_screen.dart';
import 'package:bivouac/screens/home_screen.dart';
import 'package:bivouac/screens/details_screen.dart';

void main() => runApp(BivouacApp());

class BivouacApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bivouac",
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => LandingScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(
              title: "Bivouac",
            ),
        DetailsScreen.id: (context) => DetailsScreen(),
      },
    );
  }
}
