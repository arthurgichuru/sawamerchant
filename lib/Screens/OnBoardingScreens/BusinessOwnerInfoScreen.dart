import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/IdDocumentsDropDownMenuWidget.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'package:sawamerchant/widgets/datetimeWidget.dart';

import 'BioDataScreen.dart';
import 'BusinessOwnerPhoneandEmailScreen.dart';

class BusinessOwnerInfoScreen extends StatefulWidget {
  @override
  _BusinessOwnerInfoScreenState createState() =>
      _BusinessOwnerInfoScreenState();
}

class _BusinessOwnerInfoScreenState extends State<BusinessOwnerInfoScreen> {

  final _formKey = GlobalKey<FormState>();

  DateTime selectedDate = DateTime.now();
  final myController = TextEditingController();
  DateTime date1;


  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          title: Text('Business Owner'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TitleDescriptionWidget(
                  titleDescription: 'Tell us about yourself?',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'First Name',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter First Name';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  //maxLength: 30,
                  passwordText: false,

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Last Name',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter Last Name';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  //maxLength: 30,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:DateTimeWidget(
                  labelText: 'Date of Birth',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropDownWidget(
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'ID Number',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter ID #';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  //maxLength: 10,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'KRA Pin',
                  validate:(value){
                    if(value.isEmpty){
                      return 'KRA Pin #';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  //maxLength: 10,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                  buttonOnpressed: () {
                    if( _formKey.currentState.validate()){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BioDataScreen()));
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
