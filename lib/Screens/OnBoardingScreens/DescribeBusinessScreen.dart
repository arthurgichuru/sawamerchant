import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'package:sawamerchant/widgets/titleDescriptionWidget.dart';
import 'package:sawamerchant/widgets/subtitleDescriptionWidget.dart';
import 'LinkAccountLandingScreen.dart';

class DescribeBusinessScreen extends StatefulWidget {
  @override
  _DescribeBusinessScreenState createState() => _DescribeBusinessScreenState();
}

class _DescribeBusinessScreenState extends State<DescribeBusinessScreen> {


  int _radioValue1 = -1;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;
  int _radioValue6 = -1;
  int _radioValue7 = -1;
  int _radioValue8 = -1;
  int _radioValue9 = -1;




  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

          //Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribeBusinessScreen()));

    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;

      //Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribeBusinessScreen()));

    });
  }

  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue3 = value;
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribeBusinessScreen()));
    });
  }

  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue4 = value;
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribeBusinessScreen()));
    });
  }

  void _handleRadioValueChange5(int value) {
    setState(() {
      _radioValue5 = value;
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribeBusinessScreen()));
    });
  }

  void _handleRadioValueChange6(int value) {
    setState(() {
      _radioValue6 = value;
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribeBusinessScreen()));
    });
  }

  void _handleRadioValueChange7(int value) {
    setState(() {
      _radioValue7 = value;
     // Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribeBusinessScreen()));
    });
  }

  void _handleRadioValueChange8(int value) {
    setState(() {
      _radioValue8 = value;
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribeBusinessScreen()));
    });
  }

  void _handleRadioValueChange9(int value) {
    setState(() {
      _radioValue9 = value;
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribeBusinessScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46b5d1),
        title: Text('Your Business'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TitleDescriptionWidget(
                  titleDescription: 'How would you describe \nyour business?',
                ),
              ],
            ),
            SizedBox(height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.wifi, color: Colors.green,),
                          ),
                          Text('Online Business',style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 0,
                        groupValue: _radioValue1,
                        onChanged: _handleRadioValueChange1,
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.perm_scan_wifi, color: Colors.black,),
                          ),
                          Text('Offline Business', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: _radioValue2,
                        onChanged: _handleRadioValueChange2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.all_inclusive, color: Colors.deepOrange,),
                          ),
                          Text('Online Offline Business', style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 3,
                        groupValue: _radioValue3,
                        onChanged: _handleRadioValueChange3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: SubTitleDescriptionWidget(
                titleDescription: 'Industries',
              ),
            ),
           SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.shopping_cart, color: Colors.blueAccent,),
                          ),
                          Text('Retail', style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 4,
                        groupValue: _radioValue4,
                        onChanged: _handleRadioValueChange4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.fastfood, color: Colors.pink),
                          ),
                          Text('Food and Drink', style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 5,
                        groupValue: _radioValue5,
                        onChanged: _handleRadioValueChange5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.movie,color: Colors.amber,),
                          ),
                          Text('Life Style', style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 6,
                        groupValue: _radioValue6,
                        onChanged: _handleRadioValueChange6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.airplanemode_active, color: Colors.blueAccent,),
                          ),
                          Text('Travel', style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 7,
                        groupValue: _radioValue7,
                        onChanged: _handleRadioValueChange7,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.school,color: Colors.cyan,),
                          ),
                          Text('Education', style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 8,
                        groupValue: _radioValue8,
                        onChanged: _handleRadioValueChange8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.room_service,color: Colors.red,),
                          ),
                          Text('Services', style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 9,
                        groupValue: _radioValue9,
                        onChanged: _handleRadioValueChange9,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RaisedButtonWidget(
                buttonOnpressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LinkAccountScreen()));
                },
                buttonText: 'NEXT',
                buttonColor: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
