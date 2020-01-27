import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';
import 'BusinessOwnerInfoScreen.dart';
import 'IdentityDocumentCaptureScreen.dart';



class BioDataScreen extends StatefulWidget {
  @override
  _BioDataScreenState createState() => _BioDataScreenState();
}


class _BioDataScreenState extends State<BioDataScreen>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BioDataScreen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46b5d1),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context)=>BusinessOwnerInfoScreen()));
          }),
          title: Text('Face photo'),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 300,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: IconButton(icon: Icon(Icons.camera,size: 50,), onPressed: null),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Container(child: Text('Capture Face', textAlign: TextAlign.center,)),
                )
              ],
            ),
            SizedBox(height: 200,),
            Container(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButtonWidget(
                  buttonOnpressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IDDocumentCaptureScreen()));
                  },
                  buttonColor: Colors.deepOrange,
                  buttonText: 'NEXT',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
