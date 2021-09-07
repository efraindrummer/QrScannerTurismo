import 'package:flutter/material.dart';
import 'package:qrturismo/src/widgets/CustomBottomNavigation.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
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
            onPressed: () async {
              String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('0xFF396afc', 'Cancelar', false, ScanMode.QR) ;
              print(barcodeScanRes);
        
              if(barcodeScanRes == '-1'){
                return;
              }
            }
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
            SizedBox(height: 20),
            SlimyCard(
              color: Color(0xFF396afc),
            ),
            SizedBox(height: 20),
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