import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';

import 'LoanLimitScreen.dart';




class LoanCreatedSuccessScreen extends StatefulWidget {
  @override
  _LoanCreatedSuccessScreenState createState() => _LoanCreatedSuccessScreenState();
}

class _LoanCreatedSuccessScreenState extends State<LoanCreatedSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Success Screen',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50,),
              Center(
                child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset('images/winner.png')
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  child: Text('Loan Request has been submitted successfully\n It will take less than 5 minutes to be approved!', textAlign:TextAlign.center,style: TextStyle(fontSize: 18),)
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                  buttonColor: Colors.deepOrange,
                  buttonOnpressed: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => LoanLimitScreen()));
                  },
                  buttonText: 'FINISH',
                  //buttonColor: Colors.blueAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
