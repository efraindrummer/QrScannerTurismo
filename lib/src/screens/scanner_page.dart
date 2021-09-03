import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scanner"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200),
              Image.asset("assets/image/splash_image.png", width: 200),
              TextButton(
                onPressed: () async {
                  String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('0xFF396afc', 'Cancelar', false, ScanMode.QR);
                  print(barcodeScanRes);
                }, 
                child: Text(
                  "Scanear Ahora!", 
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: 24,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}