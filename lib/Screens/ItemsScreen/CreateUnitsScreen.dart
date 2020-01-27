import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'CreateUnitSuccessScreen.dart';
import 'ItemsLandingScreen.dart';

class CreateUnitScreen extends StatefulWidget {
  @override
  _CreateUnitScreenState createState() => _CreateUnitScreenState();
}

class _CreateUnitScreenState extends State<CreateUnitScreen> {
  ProgressDialog pr;
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CreateUnitScreen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context)=>ItemsLandingScreen()));
          }),
          title: Text('Unit'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              TitleDescriptionWidget(
                titleDescription: 'Create a Unit',
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFieldWidget(
                  passwordText: false,
                  labelText: 'Unit',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFieldWidget(
                  passwordText: false,
                  labelText: 'Abbreviation',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                    buttonText: 'SAVE',
                    buttonColor: Colors.deepOrange,
                    buttonOnpressed: () {
                      pr.show();
                      Future.delayed(Duration(seconds: 3)).then((value) {
                        pr.hide().whenComplete(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CreateUnitSuccessScreen()));
                        });
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
