import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'CreateItemSuccessScreen.dart';
import 'ItemsLandingScreen.dart';

class CreateItems extends StatefulWidget {
  @override
  _CreateItemsState createState() => _CreateItemsState();
}

class _CreateItemsState extends State<CreateItems> {
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
      title: 'CreateItems',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context)=>ItemsLandingScreen()));
          }),
          title: Text('Items'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: Text('Category')
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Container(
                            child: Text('This is a drop down button for categories'),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(child: Text('Unit Type')),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Container(child: Text('This is a drop down button for Unit Type'),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: TextFieldWidget(
                          textInputType: TextInputType.number,
                          passwordText: false,
                          labelText: 'Price',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                                  CreateItemSuccessScreen()));
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
