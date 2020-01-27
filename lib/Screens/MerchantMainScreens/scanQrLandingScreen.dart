import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/ScantoPayScreen.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/ShowQRScreen.dart';

import 'ChargeCardtoPayScreen.dart';
import 'ScanNFCtoPayScreen.dart';


class ScanQrLandingScreen extends StatefulWidget {
  @override
  _ScanQrLandingScreenState createState() => _ScanQrLandingScreenState();
}

class _ScanQrLandingScreenState extends State<ScanQrLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScantoPayScreen()));
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.white
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top:20.0),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset('images/scanicon.png')),
                                ),
                                SizedBox(height: 5,),
                                Text('Scan'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShowQRScreen()));
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.white
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top:20.0),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset('images/qrOne.png')),
                                ),
                                SizedBox(height: 5,),
                                Text('Show QR'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChargeCardToPayScreen()));
                            },
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top:20.0),
                                      child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Image.asset('images/cardOne.png')),
                                    ),
                                    SizedBox(height: 5,),
                                    Text('Card'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ScanNFCtoPay()));
                            },
                            child: Card(
                              elevation: 10,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top:20.0),
                                      child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Image.asset('images/nfcOne.png')),
                                    ),
                                    SizedBox(height: 5,),
                                    Text('NFC'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}
