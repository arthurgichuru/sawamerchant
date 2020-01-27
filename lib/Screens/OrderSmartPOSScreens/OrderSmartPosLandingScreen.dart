import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/MerchantMainScreen.dart';

class OrderSmartPosLandingScreen extends StatefulWidget {
  @override
  _OrderSmartPosLandingScreenState createState() => _OrderSmartPosLandingScreenState();
}

class _OrderSmartPosLandingScreenState extends State<OrderSmartPosLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OrderSmartPOSLandingScreen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>MerchantMainScreen()));
          }),
          title: Text('Smart POS'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}
