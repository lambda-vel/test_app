import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/screen/home_screen.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String? equation;
  String? answer;

  _goToHome(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  _clear(){
    equation = null;
  }
  _addition(){
    equation = '$equation+';
  }

  _subtraction(){
    equation = '$equation-';
  }

  _multiplication(){
    equation = '$equation*';
  }

  _division(){
    equation = '$equation/';
  }

  _percentage(){
    equation = '$equation/';
  }

  _equal(){
    equation = '$equation/';
  }

  _equation(){
    equation ??= '0';
    return Text(
      '$equation',
      // textAlign: TextAlign.end,
      style: TextStyle(
        fontSize: MediaQuery.sizeOf(context).height*0.046,
      ),
    );
  }

  _answer(){
    answer ??= '';
    return Text(
      '$answer',
      // textAlign: TextAlign.end,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: MediaQuery.sizeOf(context).height*0.045,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.withOpacity(0.10),
        appBar: AppBar(
          title: const Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.green.withOpacity(0.75),

          leading: BackButton(
            onPressed: (){
              _goToHome();
            },
          ),
        ),
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.withOpacity(0.15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          _equation(),
                          /*Text(
                            'equation()',
                            // textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: MediaQuery.sizeOf(context).height*0.046,
                            ),
                          ),*/
                          const SizedBox(
                            height: 10,
                          ),
                          _answer(),
                          /*Text(
                            'Answer',
                            // textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.sizeOf(context).height*0.045,
                            ),
                          ),*/
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey.withOpacity(0.15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _calcButton('C', '_clear()'),
                        _calcButton('%', '_percentage()'),
                        _calcButton('⌫', '_backspace()'),
                        _calcButton('÷', '_division()'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _calcButton('7', '_seven()'),
                        _calcButton('8', '_eight()'),
                        _calcButton('9', '_nine()'),
                        _calcButton('*', '_multiplication()'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _calcButton('4', '_four()'),
                        _calcButton('5', '_five()'),
                        _calcButton('6', '_six()'),
                        _calcButton('-', '_subtraction()'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _calcButton('1', '_one()'),
                        _calcButton('2', '_two()'),
                        _calcButton('3', '_three()'),
                        _calcButton('+', '_addition()'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _calcButton('00', '_doubleZero()'),
                        _calcButton('0', '_zero()'),
                        _calcButton('.', '_dot()'),
                        _calcButton('=', '_equal()'),
                      ],
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _calcButton(String buttonLabel, String action){
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: (){
              action;
              switch(action){
                case('addition'): _addition();
                default:;

              }
            },
            child: Text(
              buttonLabel,
              style: TextStyle(
                fontSize: MediaQuery.sizeOf(context).height*0.045,
                color: Colors.green.withOpacity(0.9),
              ),
            ),
          ),
        ),
    );
  }
}
