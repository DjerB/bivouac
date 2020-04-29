import 'package:flutter/material.dart';
import 'package:bivouac/screens/registration_screen.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key key}) : super(key: key);

  static const String id = 'landing_screen';

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionsBuilder: (c, anim, a2, child) =>
                FadeTransition(opacity: anim, child: child),
            transitionDuration: Duration(milliseconds: 600),
            pageBuilder: (_, __, ___) => RegistrationScreen(),
          ),
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.1,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/landing_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Hero(
              tag: "logo",
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/icons/logo.png",
                  scale: 1.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
