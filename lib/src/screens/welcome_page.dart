import 'package:flutter/material.dart';
import 'package:qrturismo/src/widgets/CustomBottomNavigation.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

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
            }
          ),
          IconButton(
            icon: Icon(Icons.account_circle), 
            onPressed: (){}
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          children: <Widget>[
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
            _buildItem("Primer elemento", "ver tu viaje"),
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

Widget _buildItem(String textTitle, String subTitle){
  return new ListTile(
    title: new Text(textTitle),
    subtitle: new Text(subTitle),
    leading: new Icon(Icons.card_travel),
  );
}