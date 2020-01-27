import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'LinkAccountSuccessScreen.dart';
import 'LinkBankAccountScreen.dart';
import 'LinkCreditCardScreen.dart';

class LinkAccountScreen extends StatefulWidget {
  @override
  _LinkAccountScreenState createState() => _LinkAccountScreenState();
}

class _LinkAccountScreenState extends State<LinkAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46b5d1),
        title: Text('Link'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleDescriptionWidget(
                titleDescription: 'Link your account to \nSawapay.',
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.account_balance, color: Colors.green,),
                        Text('Bank Account', style: TextStyle(fontSize: 16),),
                        IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LinkBankAccountScreen()));
                        })
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.credit_card,color: Colors.purple,),
                        Text('Bank Card', style: TextStyle(fontSize: 16)),
                        IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LinkCreditCardScreen()));
                        })
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 200,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RaisedButtonWidget(
                buttonColor: Colors.deepOrange,
                buttonOnpressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LinkAccountSuccessScreen()));
                },
                buttonText: 'SKIP',
                //buttonColor: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
