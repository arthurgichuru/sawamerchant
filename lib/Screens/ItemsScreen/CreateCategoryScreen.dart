import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/textFieldWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'CategoryCreateSuccessScreen.dart';
import 'ItemsLandingScreen.dart';

class CreateCategories extends StatefulWidget {
  @override
  _CreateCategoriesState createState() => _CreateCategoriesState();
}

class _CreateCategoriesState extends State<CreateCategories> {
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
        title: 'CategoriesScreen',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff46b5d1),
            leading: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemsLandingScreen()));
                }),
            title: Text('Categories'),
          ),
          body: Container(
            child: ListView(children: <Widget>[
              SizedBox(
                height: 30,
              ),
              TitleDescriptionWidget(
                titleDescription: 'Create a category.',
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: TextFieldWidget(
                          passwordText: false,
                          labelText: 'Category Name',
                        ),
                      )
                    ],
                  ),
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
                                  CategoryCreateSuccessScreen()));
                        });
                      });
                    }),
              ),
            ]
            ),
          ),
        ));
  }
}
