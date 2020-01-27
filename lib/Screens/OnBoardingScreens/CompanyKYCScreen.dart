import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';


import 'CaptureBusinessDocsScreen.dart';
import 'DescribeBusinessScreen.dart';

class CompanyKYCScreen extends StatefulWidget {
  @override
  _CompanyKYCScreenState createState() => _CompanyKYCScreenState();
}

class _CompanyKYCScreenState extends State<CompanyKYCScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          title: Text('Company Details'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TitleDescriptionWidget(
                  titleDescription: 'Let’s get you started.\nCould you tell us about your company?',
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Company Name',
                    validate:(value){
                      if(value.isEmpty){
                        return 'Key in Company Name';
                      }
                      return null;
                    },
                  textInputType: TextInputType.text,
                  maxLength: 30,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Company Registration #',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Key in Company Registration #';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  maxLength: 15,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Company PIN',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Key in Company Pin';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  maxLength: 15,
                  passwordText: false,
                  textFeildIcon: IconButton(icon: Icon(Icons.help), onPressed: (){}),
                ),
              ),
           /*   Padding(
                padding: const EdgeInsets.all(8.0),
                child: UploadButtonWidget(
                  buttonColor: Colors.grey,
                  buttonText: 'Upload Company Certificate',
                  buttonOnpressed: (){},
                ),
              ),*/
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                  buttonOnpressed: (){
                    if(_formKey.currentState.validate()){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CaptureBusinessDocsScreen()));
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
