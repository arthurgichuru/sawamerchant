import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/MerchantMainScreen.dart';


class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TransactionScreen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => MerchantMainScreen()));
          }),
          title: Text('Transactions'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 10,000'),
                subtitle: Text('John Doe'),
                trailing: Text('M-PESA'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 104,000'),
                subtitle: Text('Jane Doe'),
                trailing: Text('M-PESA'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 12,000'),
                trailing: Text('M-PESA'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 13,000'),
                subtitle: Text('Jane Doe'),
                trailing: Text('CARD'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 27,000'),
                subtitle: Text('Jane Doe'),
                trailing: Text('CARD'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.highlight_off, color: Colors.red,),
                title: Text('KES: 15,000'),
                subtitle: Text('Jane Doe'),
                trailing: Text('CARD'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 27,000'),
                subtitle: Text('Jane Doe'),
                trailing: Text('CARD'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 27,000'),
                subtitle: Text('Jane Doe'),
                trailing: Text('CARD'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.highlight_off, color: Colors.red,),
                title: Text('KES: 33,000'),
                subtitle: Text('Jane Doe'),
                trailing: Text('CARD'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 15,000'),
                subtitle: Text('John Doe'),
                trailing: Text('QR CODE'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 18,000'),
                subtitle: Text('John Doe'),
                trailing: Text('QR CODE'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 39,000'),
                subtitle: Text('John Doe'),
                trailing: Text('QR CODE'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.highlight_off, color: Colors.red,),
                title: Text('KES: 39,000'),
                subtitle: Text('John Doe'),
                trailing: Text('QR CODE'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.highlight_off, color: Colors.red,),
                title: Text('KES: 29,000'),
                subtitle: Text('John Doe'),
                trailing: Text('QR CODE'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.highlight_off, color: Colors.red,),
                title: Text('KES: 75,000'),
                subtitle: Text('John Doe'),
                trailing: Text('QR CODE'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 33,000'),
                subtitle: Text('John Doe'),
                trailing: Text('QR CODE'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 15,000'),
                subtitle: Text('John Doe'),
                trailing: Text('QR CODE'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green,),
                title: Text('KES: 15,000'),
                subtitle: Text('John Doe'),
                trailing: Text('QR CODE'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
