import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/MerchantMainScreen.dart';

import 'MultipleBusinessOwnerScreen.dart';


class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SettingsScreen',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => MerchantMainScreen()));
          }),
          title: Text('Settings'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('TILLS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue),),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.green,),
                title: Text('Set up M-PESA Till'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){}),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.green,),
                title: Text('Set up M-PESA PayBill'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){}),
              ),
              Divider(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('TEAM MANAGEMENT', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blue),),
              ),
              ListTile(
                leading: Icon(Icons.people, color: Colors.indigoAccent,),
                title: Text('Set up Stores'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){}),
              ),
              ListTile(
                leading: Icon(Icons.store, color: Colors.indigoAccent,),
                title: Text('Set up Employees'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){}),
              ),
              Divider(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('ACCOUNT', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),),
              ),
              ListTile(
                leading: Icon(Icons.business_center, color: Colors.orange,),
                title: Text('Business Information'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){}),
              ),
              ListTile(
                leading: Icon(Icons.business_center, color: Colors.orange,),
                title: Text('Bank Account'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){}),
              ),
              ListTile(
                leading: Icon(Icons.people, color: Colors.orange,),
                title: Text('Company Directors'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MultipleBusinessOwnerScreen()));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
