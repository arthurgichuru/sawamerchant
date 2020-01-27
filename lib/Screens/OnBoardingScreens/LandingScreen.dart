import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sawamerchant/widgets/flatButtonWidget.dart';
import '../../widgets/textFieldWidget.dart';
import '../../widgets/raisedbuttonWidget.dart';
import '../../widgets/titleDescriptionWidget.dart';
import 'BusinessOwnerInfoScreen.dart';
import 'CompanyKYCScreen.dart';
import '../MerchantMainScreens/MerchantMainScreen.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  TextEditingController passwordTextController;
  TextEditingController phoneNumberTextController;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _exitApp(context),
      child: MaterialApp(
        title: 'LandingPage',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Color(0xffff5722),
            accentColor: Color(0xffff5722),
        ),
        home: Form(
          key: _formKey,
          child: Scaffold(
            backgroundColor: Color(0xff46b5d1),
            body: Container(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Text('Welcome to \nSenti',style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0, left: 8,right: 8),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFieldWidget(
                              controller: phoneNumberTextController,
                              validate:(value){
                                if(value.isEmpty){
                                  return 'Please Enter Phone';
                                }
                                return null;
                              },
                              textInputType: TextInputType.phone,
                              //labelText: 'Enter Phone number',
                              hintText: 'Enter Phone number',
                              passwordText: false,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFieldWidget(
                              controller: passwordTextController,
                              validate:(value){
                                if(value.isEmpty){
                                  return 'Please Enter Password';
                                }
                                return null;
                              },
                              textInputType: TextInputType.text,
                              hintText: 'Enter Password',
                             // labelText: 'Enter Password',
                              passwordText: true,
                            ),
                          ),
                        ],
                      ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25),
                    child: RaisedButton(
                      child:Text('LOG IN',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed: () {
                        //passwordTextController.clear();
                        //phoneNumberTextController.clear();
                        if (_formKey.currentState.validate()){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MerchantMainScreen()));
                        }
                      },
                      color: Colors.lightGreen,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 15, right: 15),
                    child: FlatButton(
                      onPressed: () {
                        //passwordTextController.clear();
                        //phoneNumberTextController.clear();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BusinessOwnerInfoScreen()));
                      },
                      child: Text('CREATE AN ACCOUNT',style: TextStyle(color: Colors.white,fontSize: 16,)),
                      //buttonColor: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Forgot Password', style: TextStyle(color: Colors.white),),
                          IconButton(icon: Icon(Icons.chevron_right, color: Colors.white,), onPressed: (){
                            _showDialog();
                          })
                        ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _exitApp(BuildContext context) {
    return showDialog(
          context: context,
          child: new AlertDialog(
            title: new Text('Do you want to exit this Senti?'),
            content: new Text('We hate to see you leave...'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () => SystemNavigator.pop(),
                child: new Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Reset password"),
          content: new Text("Functionality Comming Soon"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
