import 'package:flutter/material.dart';

import 'SettingsScreen.dart';

class MultipleBusinessOwnerScreen extends StatefulWidget {
  @override
  _MultipleBusinessOwnerScreenState createState() => _MultipleBusinessOwnerScreenState();
}

class _MultipleBusinessOwnerScreenState extends State<MultipleBusinessOwnerScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MultipleBusinessOwners',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
          }),
          title: Text('Directors'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
