import 'package:flutter/material.dart';
import 'package:sawamerchant/widgets/raisedbuttonWidget.dart';

class CalculatorWidget extends StatefulWidget {
  @override
  _CalculatorWidgetState createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {

    String output = "0";

    String _output = "0";
    double num1 = 0.0;
    double num2 = 0.0;
    String operand = "";

    buttonPressed(String buttonText){

      if(buttonText == "CLEAR"){

        _output = "0";
        num1 = 0.0;
        num2 = 0.0;
        operand = "";

      } else if (buttonText == "+" ){

        num1 = double.parse(output);

        operand = buttonText;

        _output = "0";

      } else if(buttonText == "."){

        if(_output.contains(".")){
          print("Already conatains a decimals");
          return;

        } else {
          _output = _output + buttonText;
        }

      } else if (buttonText == "="){

        num2 = double.parse(output);

        if(operand == "+"){
          _output = (num1 + num2).toString();
        }


        num1 = 0.0;
        num2 = 0.0;
        operand = "";

      } else {

        _output = _output + buttonText;

      }

      print(_output);

      setState(() {

        output = double.parse(_output).toStringAsFixed(2);

      });

    }

    Widget buildButton(String buttonText) {
      return new Expanded(
        child: new OutlineButton(
          padding: new EdgeInsets.all(24.0),
          child: new Text(buttonText,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
          onPressed: () =>
              buttonPressed(buttonText)
          ,
        ),
      );
    }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
          body: new Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.centerRight,
                        padding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0
                        ),
                        child: new Text(output, style: new TextStyle(
                          fontSize: 48.0,
                          fontWeight: FontWeight.bold,
                        ))),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 60,
                          width:300,
                          child: RaisedButtonWidget(buttonText: 'CHARGE', buttonOnpressed: (){},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(children: [
                    Expanded(
                      flex: 1,
                      child: Row(children: [
                        buildButton("7"),
                        buildButton("8"),
                        buildButton("9"),
                      ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(children: [
                        buildButton("4"),
                        buildButton("5"),
                        buildButton("6"),
                      ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(children: [
                        buildButton("1"),
                        buildButton("2"),
                        buildButton("3"),
                      ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(children: [
                        buildButton("."),
                        buildButton("0"),
                        buildButton("+")
                      ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(children: [
                        buildButton("CLEAR"),
                        buildButton("="),
                      ]),
                    )
                  ]),
                ),
              )
            ],
          ));
    }
  }

