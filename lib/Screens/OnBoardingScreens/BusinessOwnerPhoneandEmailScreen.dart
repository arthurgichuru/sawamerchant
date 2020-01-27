import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/countryCodesDropDownWidget.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';

import 'IdentityDocumentCaptureScreen.dart';
import 'OneTimePinScreen.dart';

class BusinessOwnerPhoneandEmail extends StatefulWidget {
  @override
  _BusinessOwnerPhoneandEmailState createState() => _BusinessOwnerPhoneandEmailState();
}

class _BusinessOwnerPhoneandEmailState extends State<BusinessOwnerPhoneandEmail> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>IDDocumentCaptureScreen()));
          }),
          //backgroundColor: Color(0xffff5722),
          title: Text('Contacts'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TitleDescriptionWidget(
                  titleDescription: 'Great! \nWhat is your phone number and email?',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropDownWidgetCountryCodes(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Phone number',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter Phone #';
                    }
                    return null;
                  },
                  textInputType: TextInputType.phone,
                  //maxLength: 10,
                  passwordText: false,

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Email',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter Email';
                    }
                    return null;
                  },
                  textInputType: TextInputType.emailAddress,
                  //maxLength: 10,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                  buttonOnpressed: () {

                    if(_formKey.currentState.validate()){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OneTimePinScreen()));
                    }
                  },
                  buttonText: 'NEXT',
                  buttonColor: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
