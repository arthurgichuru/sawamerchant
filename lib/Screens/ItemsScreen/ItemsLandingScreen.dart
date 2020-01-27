import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/MerchantMainScreen.dart';
import 'CreateCategoryScreen.dart';
import 'CreateItemScreen.dart';
import 'CreateUnitsScreen.dart';


class ItemsLandingScreen extends StatefulWidget {
  @override
  _ItemsLandingScreenState createState() => _ItemsLandingScreenState();
}

class _ItemsLandingScreenState extends State<ItemsLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ItemsLandingScreen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>MerchantMainScreen()));
          }),
          title: Text('Items'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.shopping_basket, color: Colors.orange,),
                title: Text('All Items'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateItems()));
                }),
              ),
              ListTile(
                leading: Icon(Icons.shop, color: Colors.green,),
                title: Text('Categories'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateCategories()));
                }),
              ),
              ListTile(
                leading: Icon(Icons.format_list_numbered, color: Colors.purple,),
                title: Text('Units'),
                trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateUnitScreen()));
                }),
              )
            ],
          ),
        )
      ),
    );
  }
}
