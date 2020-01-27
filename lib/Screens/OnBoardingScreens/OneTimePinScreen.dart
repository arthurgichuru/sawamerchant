import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/flatButtonWidget.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';

import 'SetupPassWordScreen.dart';

class OneTimePinScreen extends StatefulWidget {
  @override
  _OneTimePinScreenState createState() => _OneTimePinScreenState();
}

class _OneTimePinScreenState extends State<OneTimePinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46b5d1),
        title: Text('Secure Phone'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleDescriptionWidget(
                titleDescription: 'Lets verify your phone \nnumber.',
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextFieldWidget(
                textInputType: TextInputType.number,
                maxLength: 4,
                passwordText: true,
                labelText: 'One time pin',
                helperText: 'Key in the 4 digit pin sent through SMS',
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButtonWidget(
                    buttonText: 'SEND AGAIN',
                    buttonOnpressed: (){},
                  ),
                  RaisedButtonWidget(
                    buttonText: 'VERIFY',
                    buttonOnpressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SetupPassWordScreen()));
                    },
                    buttonColor: Colors.deepOrange,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
