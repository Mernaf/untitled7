import 'package:flutter/material.dart';

class DegreeScreen extends StatelessWidget {
  DegreeScreen({Key? key}) : super(key: key);
  final degreeController = TextEditingController();

  void getDegree(context) {
    double degree = double.parse(degreeController.text);
    String msg = "";
    if (degree >= 0 && degree < 50) {
      msg = "fail";
    } else if (degree >= 50 && degree < 65) {
      msg = "pass";
    } else if (degree >= 65 && degree < 85) {
      msg = "good";
    } else if (degree >= 85 && degree < 100) {
      msg = "A+";
    } else {
      msg = "error";
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
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            controller: degreeController,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              getDegree(context);
            },
            child: Text("Get Average"))
      ],
    ));
  }
}
