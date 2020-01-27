import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'LandingScreen.dart';

class AdvertScreen extends StatefulWidget {
  @override
  _AdvertScreenState createState() => _AdvertScreenState();
}

class _AdvertScreenState extends State<AdvertScreen> {

  List<PageViewModel>getPages(){
    return[
      PageViewModel(
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(color: Colors.white)
        ),
        image: Center(
            child: Image.asset("images/merchantthree.png", height: 200,width: 200,)),
        title: 'Say goodbye to transaction \nfees.',
        body: 'Collect money from your customers  without additional costs charged by regular banks and mobile money providers.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
      PageViewModel(
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.white)
        ),
        image: Center(child: Image.asset("images/merchantthree.png",height: 200,width: 200,)),
        title: 'Get financing chap chap,\nno hustles of a regular bank.',
        body: 'Get cashflow financing to ensure you can run your business smoothly without interuptions. Your loan limit will be determined by your sales.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
      PageViewModel(
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.white)
        ),
        image: Center(child: Image.asset("images/merchantthree.png", width: 200,height: 200,)),
        title: 'Easy Payments to China.',
        body: 'Senti will gives you an easy and transaprent way of paying your suppliers in China at the press of a button.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
      PageViewModel(
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.white)
        ),
        image: Center(child: Image.asset("images/merchantthree.png",height: 200,width: 200,)),
        title: 'See how your business is performing.',
        body: 'Senti will give you insights to your customer transactions and also give your summary cash in and cash out analysis for your business.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Color(0xff46b5d1),
        pages: getPages(),
        showSkipButton: true,
        skip: const Text("SKIP",style: TextStyle(fontSize: 18,color: Colors.white)),
        done: Text('DONE',style: TextStyle(fontSize: 18, color: Colors.white),
        ),
            onDone: (){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LandingScreen()));
            },
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            color: Colors.white,
            activeColor: Colors.red,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)
            ),
      ),
      )
    );
  }
}
