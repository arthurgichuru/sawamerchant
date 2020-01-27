import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'SetupBusinessScreen.dart';


class SetupPassWordScreen extends StatefulWidget {
  @override
  _SetupPassWordScreenState createState() => _SetupPassWordScreenState();
}

class _SetupPassWordScreenState extends State<SetupPassWordScreen> {

  bool _lights = false;

  ProgressDialog pr;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //Progress dialog
    pr = new ProgressDialog(context);
    pr.style(
        message: 'Please Wait...',
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
          title: Text('Account Security'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TitleDescriptionWidget(
                  titleDescription: 'Let’s make your account \nsecure.',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Password',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter password';
                    }
                    return null;
                  },
                  textInputType: TextInputType.number,
                  maxLength: 4,
                  passwordText: true,
                  helperText: 'Key in a strong password',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Repeat Password',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please repeat password';
                    }
                    return null;
                  },
                  textInputType: TextInputType.number,
                  maxLength: 4,
                  passwordText: true,
                  helperText: 'Ensure this password is the same as above',
                ),
              ),
              SizedBox(height: 20),
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
                  padding:
                  const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                  child: Container(
                      width: 400,
                      child: RaisedButtonWidget(
                          buttonColor: Colors.deepOrange,
                          buttonText: 'SAVE',
                          buttonOnpressed: () {
                            if (_formKey.currentState.validate()) {
                              pr.show();
                              Future.delayed(Duration(seconds: 3)).then((value) {
                                pr.hide().whenComplete(() {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) =>
                                          SetupBusinessScreen()));
                                }
                                );
                              }
                              );
                            }
                          }
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
