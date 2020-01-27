import 'package:flutter/material.dart';

import 'package:sawamerchant/Screens/MerchantMainScreens/MerchantMainScreen.dart';


class MarketyourBizLandingScreen extends StatefulWidget {
  @override
  _MarketyourBizLandingScreenState createState() => _MarketyourBizLandingScreenState();
}

class _MarketyourBizLandingScreenState extends State<MarketyourBizLandingScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MarketyourBizLandingScreen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>MerchantMainScreen()));
          }),
          title: Text('Marketing'),
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
