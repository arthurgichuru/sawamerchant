import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/CustomerScreens/CreateCustomerScreen.dart';
import 'package:sawamerchant/Screens/ItemsScreen/ItemsLandingScreen.dart';
import 'package:sawamerchant/Screens/LoanScreens/LoanLimitScreen.dart';
import 'package:sawamerchant/Screens/MarketyourBizScreens/MarketBizLandingScreen.dart';
import 'package:sawamerchant/Screens/OrderSmartPOSScreens/OrderSmartPosLandingScreen.dart';
import 'package:sawamerchant/Screens/ReportsScreens/ReportsLandingScreen.dart';
import 'package:sawamerchant/Screens/Settings/SettingsScreen.dart';
import 'package:sawamerchant/Screens/SupportScreens/SupportLandingScreen.dart';
import 'package:sawamerchant/Screens/TransactionScreens/TransactionScreen.dart';

class MerchantDrawerScreen extends StatefulWidget {
  @override
  _MerchantDrawerScreenState createState() => _MerchantDrawerScreenState();
}

class _MerchantDrawerScreenState extends State<MerchantDrawerScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MerchantDrawerScreen',
      home: Scaffold(
        body: Container(
          child: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xff46b5d1)
                  ),
                  accountName: Text("Eric Muriuki"),
                  accountEmail: Text("eric.muriuki@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "E",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.equalizer,
                    color: Colors.teal,
                  ),
                  title: Text("Transactions"),
                  trailing: Icon(
                    Icons.chevron_right,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TransactionScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  title: Text("Customers"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateCustomerScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.storage,
                    color: Colors.green,
                  ),
                  title: Text("Items"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemsLandingScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.monetization_on,
                    color: Colors.blueAccent,
                  ),
                  title: Text("Get a loan"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoanLimitScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.apps,
                    color: Colors.deepOrange,
                  ),
                  title: Text("Market your business"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MarketyourBizLandingScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.trending_up,
                    color: Colors.purple,
                  ),
                  title: Text("Reports"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportsLandingScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_grocery_store,
                    color: Colors.green,
                  ),
                  title: Text("Order your smart POS"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSmartPosLandingScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.headset_mic,
                    color: Colors.orange,
                  ),
                  title: Text("Support"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SupportLandingScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black54,
                  ),
                  title: Text("Settings"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
