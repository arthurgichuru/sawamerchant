import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShowQRScreen extends StatefulWidget {
  @override
  _ShowQRScreenState createState() => _ShowQRScreenState();
}

class _ShowQRScreenState extends State<ShowQRScreen> {


  GlobalKey globalKey = new GlobalKey();

  String _dataString = "MERCHANT001";

  @override
  Widget build(BuildContext context) {
    final bodyHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46b5d1),
        title: Text('Merchant QR'),
    ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                child: Text('Merchant Code: $_dataString', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Center(
                  child: RepaintBoundary(
                    key: globalKey,
                    child: QrImage(
                      data: _dataString,
                      size: 0.5 * bodyHeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
