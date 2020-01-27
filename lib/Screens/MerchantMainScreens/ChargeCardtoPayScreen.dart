import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'MerchantMainScreen.dart';
import 'package:flutter/services.dart';

class ChargeCardToPayScreen extends StatefulWidget {
  @override
  _ChargeCardToPayScreenState createState() => _ChargeCardToPayScreenState();
}

class _ChargeCardToPayScreenState extends State<ChargeCardToPayScreen> {


  String barcode = "";
  double payAmount =0;
  double payAmountTwo=0;
  double operator1 = 0;
  double operator2 = 0;
  String tipOne = '';
  double result=0;

  final mypayAmountontroller = TextEditingController();
  final mypayAmountontrollertwo = TextEditingController();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScantoCollect',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MerchantMainScreen()));
              }),
          title: Text('Charge card to collect'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TitleDescriptionWidget(
                  titleDescription: 'Enter Amount.',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFieldWidget(
                  textInputType: TextInputType.number,
                  controller: mypayAmountontroller,
                  passwordText: false,
                  labelText: 'Enter Amount: KES',
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Add a Tip', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        mypayAmountontrollertwo.text = '100';
                        setState(() {
                          tipProcess();

                        });
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Center(child: Text('KES 100')),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        mypayAmountontrollertwo.text= '200';
                        setState(() {
                          tipProcess();

                        });
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Center(child: Text('KES 200')),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        mypayAmountontrollertwo.text = '500';
                        setState(() {
                          tipProcess();

                        });
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Center(child: Text('KES 500')),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){
                        mypayAmountontrollertwo.text = '1000';
                        setState(() {
                          tipProcess();

                        });
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Center(child: Text('KES 1000')),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              /*   Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFieldWidget(
                  textInputType: TextInputType.number,
                  controller: mypayAmountontrollertwo,
                  passwordText: false,
                  labelText: 'TIP Amount',
                ),
              ),*/
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('SUB TOTAL:'),
                    Text('KES: $operator1', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18), textAlign: TextAlign.center,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('TIP AMOUNT'),
                    Text('KES: $operator2', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18), textAlign: TextAlign.center,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('TOTAL AMOUNT'),
                    Text('KES: $result', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18), textAlign: TextAlign.center,),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButtonWidget(
                  buttonText: 'CHARGE CARD',
                  buttonOnpressed: () {
                    //scanQr();
                    clearFeilds();
                  },
                  buttonColor: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  double tipProcess(){
    operator1 = double.parse(mypayAmountontroller.text);
    operator2 = double.parse(mypayAmountontrollertwo.text);
    result = operator1 +operator2;
    return result;

  }

  void clearFeilds(){
    mypayAmountontrollertwo.clear();
    mypayAmountontrollertwo.clear();
  }

}
