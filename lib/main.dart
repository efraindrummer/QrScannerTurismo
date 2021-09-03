import 'package:flutter/material.dart';
import 'package:qrturismo/src/screens/splashscreen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Scanner Turismo',
      home: MySplash()
    );
  }
}