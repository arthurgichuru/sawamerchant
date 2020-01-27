import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/MerchantMainScreen.dart';
import 'package:finance/finance.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';

import 'LoanRequestSuccessScreen.dart';

class LoanLimitScreen extends StatefulWidget {
  @override
  _LoanLimitScreenState createState() => _LoanLimitScreenState();
}

class _LoanLimitScreenState extends State<LoanLimitScreen> {
  bool _lights = false;
  ProgressDialog pr;
  double _qualifyforSliderValue = 50;
  double _howmuchyouneedSliderValue = 50;

  @override
  Widget build(BuildContext context) {
    //create the progress bar
    pr = new ProgressDialog(context);
    pr.style(
        message: 'Please hold on....',
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600));

    //make the result of the amount slider thousands
    double multiply() {
      double result = _howmuchyouneedSliderValue * 1000;
      return result;
    }

    //get the price based on the amount to be contributed slider
    double percentagePrice() {
      var _qualifyforSliderValue = 10;
      switch (_qualifyforSliderValue) {
        case 10:
          {
            double percentageResult = (10 + 3).toDouble();
            return percentageResult;
          }
          break;

        case 20:
          {
            var percentageResult = (10 + 2).toDouble();
            return percentageResult;
          }
          break;

        case 30:
          {
            var percentageResult = (10 + 1).toDouble();
            return percentageResult;
          }
          break;

        case 40:
          {
            var percentageResult = (10 + 1).toDouble();
            return percentageResult;
          }
          break;

        case 50:
          {
            var percentageResult = (10 + 1).toDouble();
            return percentageResult;
          }
          break;
      }
    }

    //calculate monthly payments
    double monthlyPayments() {
      double monthlyPaymentResult =
          (Finance.pmt(rate:  0.013/ 12, nper: 1 * 12, pv: multiply())) * -1;
      return monthlyPaymentResult;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoanLimitScreen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MerchantMainScreen()));
              }),
          title: Text('Loan'),
        ),
        body: Container(
          child: ListView(children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Container(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'You qualify for upto:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          child: Text(
                            'KES: 50,000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Text(
                              'What % of daily \ncollections \nshould we deduct?'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Slider(
                            activeColor: Colors.deepOrange,
                            min: 10,
                            max: 50,
                            divisions: 4,
                            label: '$_qualifyforSliderValue',
                            onChanged: (double qualifyforSliderValue) {
                              setState(() {
                                _qualifyforSliderValue = qualifyforSliderValue;
                              });
                            },
                            value: _qualifyforSliderValue,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        alignment: Alignment.center,
                        child: Text('${_qualifyforSliderValue.toInt()} %'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Text('How much cash\ndo you need ?'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Slider(
                            activeColor: Colors.deepOrange,
                            min: 30,
                            max: 250.0,
                            divisions: 5,
                            label: '$_howmuchyouneedSliderValue',
                            onChanged: (double howmuchyouneedSliderValue) {
                              setState(() {
                                _howmuchyouneedSliderValue =
                                    howmuchyouneedSliderValue;
                              });
                            },
                            value: _howmuchyouneedSliderValue,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      alignment: Alignment.center,
                      child: Text(
                        '${_howmuchyouneedSliderValue.toInt()}K',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Loan Amount:'),
                        Text('KES: ${multiply().round()}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Interest Rate:'),
                        Text(
                          '${percentagePrice().round()} PA',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Monthly Payments:'),
                        Text('KES: ${monthlyPayments().round()}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 70,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: SwitchListTile(
                                title: const Text('Accept Terms and Conditions'),
                                value: _lights,
                                onChanged: (bool value) { setState(() { _lights = value; }); },
                                //secondary: const Icon(Icons.lightbulb_outline),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 350,
                        child: RaisedButtonWidget(
                            buttonText: 'REQUEST',
                            buttonColor: Colors.deepOrange,
                            buttonOnpressed: () {
                              pr.show();
                              Future.delayed(Duration(seconds: 3)).then((value) {
                                pr.hide().whenComplete(() {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoanCreatedSuccessScreen()));
                                });
                              });
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
