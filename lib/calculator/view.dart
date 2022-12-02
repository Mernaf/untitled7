import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({Key? key}) : super(key: key);
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  final opController = TextEditingController();

  void calculate(context) {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    String operator = opController.text;
    double result=0;
    String msg = "";
    if (operator == "+") {
     result= num1 + num2;
    } else if (operator == "-") {
      result =num1 - num2;
    } else if (operator == "*") {
      result= num1 * num2;
    }else{
      msg="error";
    }
    if(msg==""){
      msg=result.toString();
    }


    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.pinkAccent,
        content: Row(children: [
          Icon(
            Icons.message,
            color: Colors.white24,
          ),
          SizedBox(
            width: 50,
          ),
          Text(msg, style: TextStyle(fontSize: 30)),
        ])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            controller: num1Controller,
            decoration: InputDecoration(
              label: Text("enter num 1"),
            ),
          )),
      Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            controller: num2Controller,
            decoration: InputDecoration(
              label: Text("enter num 2"),
            ),
          )),
      Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            controller: opController,
            decoration: InputDecoration(
              label: Text("enter operator"),
            ),
          )),
      ElevatedButton(onPressed: () {
        calculate(context);
      }, child: Text("Calculate"))
    ]));
  }
}
