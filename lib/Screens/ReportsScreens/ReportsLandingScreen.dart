import 'package:flutter/material.dart';

import 'package:sawamerchant/Screens/MerchantMainScreens/MerchantMainScreen.dart';

class ReportsLandingScreen extends StatefulWidget {
  @override
  _ReportsLandingScreenState createState() => _ReportsLandingScreenState();
}

class _ReportsLandingScreenState extends State<ReportsLandingScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ReportsLandingScreen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>MerchantMainScreen()));
          }),
          title: Text('Reports'),
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
