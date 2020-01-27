import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/datetimeWidget.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'LinkAccountLandingScreen.dart';
import 'LinkAccountSuccessScreen.dart';


class LinkCreditCardScreen extends StatefulWidget {
  @override
  _LinkCreditCardScreenState createState() => _LinkCreditCardScreenState();
}

class _LinkCreditCardScreenState extends State<LinkCreditCardScreen> {
  ProgressDialog pr;
  final _formKey = GlobalKey<FormState>();
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
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          title: Text('Bank Card'),
          leading: IconButton(icon: Icon(Icons.close), onPressed: (){
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => LinkAccountScreen()));
          }),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TitleDescriptionWidget(
                  titleDescription: 'Link your bank card.',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Card Number',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter Card #';
                    }
                    return null;
                  },
                  textInputType: TextInputType.number,
                  maxLength: 15,
                  passwordText: false,
                  helperText: 'Key in your card number',
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DateTimeWidget(
                  labelText: 'Expiry Date',
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'CVV',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter CVV #';
                    }
                    return null;
                  },
                  textInputType: TextInputType.number,
                  maxLength: 3,
                  passwordText: true,
                ),
              ),
             /* Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SubTitleDescriptionWidget(
                      titleDescription: 'Billing Address',
                    ),
                  ],
                ),
              ),*/
              /*SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Address',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter Address';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  maxLength: 30,
                  passwordText: false,
                ),
              ),*/
              /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Country',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Country';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  maxLength: 30,
                  passwordText: false,
                ),
              ),*/
              /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Post Code',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter Post Code';
                    }
                    return null;
                  },
                  maxLength: 10,
                  textInputType: TextInputType.number,
                  passwordText: false,
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                  buttonText: 'LINK BANK CARD',
                  buttonColor: Colors.deepOrange,
                  buttonOnpressed: () {
                    if (_formKey.currentState.validate()) {
                      pr.show();
                      Future.delayed(Duration(seconds: 3)).then((value) {
                        pr.hide().whenComplete(() {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  LinkAccountSuccessScreen()));
                        }
                        );
                      }
                      );
                    }
                  }
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
