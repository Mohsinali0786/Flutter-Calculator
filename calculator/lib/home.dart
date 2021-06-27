import 'package:flutter/material.dart';

class Calculatorapp extends StatefulWidget {


  @override
  _CalculatorappState createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {

var result="";

  Widget btn(var ttext){
  return ElevatedButton(onPressed: (){
    setState(() {
      result=ttext;
    });
  

  }, child: Text(ttext));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(result ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
            btn('1'),
            btn('2'),
            btn('3'),
            btn('4'),
          ]),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
            btn('5'),
            btn('6'),
            btn('7'),
            btn('8'),
          ]),
          
          SizedBox(height:10),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
            btn('9'),
            btn('0'),
            btn('+'),
            btn('-'),
          ]),
          
          SizedBox(height:10),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
            btn('*'),
            btn('/'),
            btn('clear'),
            btn('='),
          ]),
        ],)
      
    );
  }
}
