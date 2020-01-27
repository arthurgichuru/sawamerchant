import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/MerchantMainScreen.dart';


class SupportLandingScreen extends StatefulWidget {
  @override
  _SupportLandingScreenState createState() => _SupportLandingScreenState();
}

class _SupportLandingScreenState extends State<SupportLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SupportLandingScreen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          title: Text('Support'),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => MerchantMainScreen()));
          }),
        ),
      ),
    );
  }
}
