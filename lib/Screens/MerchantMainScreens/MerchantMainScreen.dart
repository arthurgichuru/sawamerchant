
import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/scanQrLandingScreen.dart';
import 'package:sawamerchant/widgets/calculatorWidget.dart';
import 'MerchantDrawerScreen.dart';
import 'SoftPosScreen.dart';

class MerchantMainScreen extends StatefulWidget {
  @override
  _MerchantMainScreenState createState() => _MerchantMainScreenState();
}

class _MerchantMainScreenState extends State<MerchantMainScreen> {

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    CalculatorWidget(),
    ScanQrLandingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop:() => _logOffApp(context),
      child: Scaffold(
          appBar: AppBar(
            title: Text('Senti'),
            backgroundColor: Color(0xff46b5d1),
          ),
          drawer: MerchantDrawerScreen(),
          body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('POS'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_merge),
              title: Text('Library'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Profile'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff3c6f9c),
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Future<bool> _logOffApp(BuildContext context) {
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text('Do you want to Log Off?'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () {
              Navigator.of(context).pop(true);
              },
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ??
        false;
  }



}
