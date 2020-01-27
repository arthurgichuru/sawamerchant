import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';

import 'LandingScreen.dart';


class LinkAccountSuccessScreen extends StatefulWidget {
  @override
  _LinkAccountSuccessScreenState createState() => _LinkAccountSuccessScreenState();
}

class _LinkAccountSuccessScreenState extends State<LinkAccountSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Success Screen',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: ListView(
              children: <Widget>[
                SizedBox(height: 50,),
                Center(
                  child: Container(
                    height: 200,
                      width: 200,
                      child: Image.asset('images/winner.png')
                  ),
                ),
                SizedBox(height: 20,),
               Container(
                      child: Text('Hooray! Your account is ready to use!', textAlign:TextAlign.center,style: TextStyle(fontSize: 18),)
                ),
                SizedBox(height: 100,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    child: Card(
                      elevation: 10,
                      color: Colors.black,
                      child: Container(
                        height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.white,),
                                Text('You’ve just earned 1 Loop tree for \nopening an account with us.',textAlign: TextAlign.start,style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RaisedButtonWidget(
                    buttonColor: Colors.deepOrange,
                    buttonOnpressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LandingScreen()));
                    },
                    buttonText: 'GET STARTED',
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
