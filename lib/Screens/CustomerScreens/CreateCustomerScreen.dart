import 'package:flutter/material.dart';
import 'package:sawamerchant/Screens/MerchantMainScreens/MerchantMainScreen.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'CustomerCreateSuccessScreen.dart';

class CreateCustomerScreen extends StatefulWidget {
  @override
  _CreateCustomerScreenState createState() => _CreateCustomerScreenState();
}

class _CreateCustomerScreenState extends State<CreateCustomerScreen> {
  final _formKey = GlobalKey<FormState>();
  ProgressDialog pr;

  @override
  Widget build(BuildContext context) {
    //Progress dialog
    pr = new ProgressDialog(context);
    pr.style(
        message: 'Please Waiting...',
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

    return MaterialApp(
      title: 'CreateCustomer',
      debugShowCheckedModeBanner: false,
      home: Form(
        key: _formKey,
        child: Scaffold(
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
            title: Text('Create Customer'),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                height: 900,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        child: TitleDescriptionWidget(
                          titleDescription: 'Key in customer \ndetails.',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextFieldWidget(
                            labelText: 'First Name',
                            validate:(value){
                              if(value.isEmpty){
                                return 'Please Enter First Name';
                              }
                              return null;
                            },
                            passwordText: false,
                            textInputType: TextInputType.text,
                            maxLength: 30,
                          )),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFieldWidget(
                          labelText: 'Last Name',
                          validate:(value){
                            if(value.isEmpty){
                              return 'Please Enter Last Name';
                            }
                            return null;
                          },
                          passwordText: false,
                          textInputType: TextInputType.text,
                          maxLength: 30,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextFieldWidget(
                            labelText: 'Phone',
                            validate:(value){
                              if(value.isEmpty){
                                return 'Please Enter Phone #';
                              }
                              return null;
                            },
                            passwordText: false,
                            textInputType: TextInputType.phone,
                            maxLength: 10,
                          )),
                    ),
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextFieldWidget(
                            labelText: 'email',
                            validate:(value){
                              if(value.isEmpty){
                                return 'Please Enter Email';
                              }
                              return null;
                            },
                            passwordText: false,
                            textInputType: TextInputType.emailAddress,
                            maxLength: 15,
                          )),
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
                                                CustomerCreateSuccessScreen()));
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
            ],
          ),
        ),
      ),
    );
  }
}
