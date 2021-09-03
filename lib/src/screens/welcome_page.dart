import 'package:flutter/material.dart';
import 'package:qrturismo/src/screens/scanner_page.dart';
import 'package:qrturismo/src/widgets/CustomBottomNavigation.dart';
import 'package:slimy_card/slimy_card.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF396afc),
        title: Text("Escanea tu Viaje Turistico"),
        actions: [
          IconButton(
            icon: Icon(Icons.qr_code_scanner_outlined), 
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScannerPage()));
            }
          ),
          IconButton(
            icon: Icon(Icons.view_carousel_sharp), 
            onPressed: (){}
          ),
          IconButton(
            icon: Icon(Icons.account_circle), 
            onPressed: (){}
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30),
            SlimyCard(
              color: Color(0xFF396afc),
              topCardWidget: CustomTop(),
            ),
            SizedBox(height: 10),
            SlimyCard(
              color: Color(0xFF396afc),
            ),
            SizedBox(height: 10),
            SlimyCard(
              color: Color(0xFF396afc),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class CustomTop extends StatelessWidget {
  const CustomTop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Tap to Open"),
    );
  }
}