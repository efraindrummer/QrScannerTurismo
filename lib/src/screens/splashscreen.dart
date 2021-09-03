import 'package:flutter/material.dart';
import 'package:qrturismo/src/screens/welcome_page.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {

  @override
  Widget build(BuildContext context) {

    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new WelcomePage(),
      image: Image.asset('assets/image/splash_image.png'),
      gradientBackground: new LinearGradient(
        colors: [
          Color(0xFF396afc),
          Color(0xFF2948ff),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      ),
      title: Text(
        "Qr Scanner", 
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: 32,
          color: Colors.white
        ),
      ),
      photoSize: 80.0,
      loaderColor: Colors.white,
      loadingText: Text("Cargando... \n Bienvenido", style: TextStyle(color: Colors.white)),
    );
  }
}