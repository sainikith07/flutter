import 'package:flutter/material.dart';

void main() => runApp(CalApp());

class CalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cal2(),
    );
  }
}

class Cal2 extends StatefulWidget {
  @override
  Cal3 createState() => Cal3();
}

class Cal3 extends State<Cal2> {
  final TextEditingController c1 = TextEditingController();
  final TextEditingController c2 = TextEditingController();
  String result = "";

  double Num1() => double.tryParse(c1.text) ?? 0;
  double Num2() => double.tryParse(c2.text) ?? 0;

  void add() {
    double res = Num1() + Num2();
    setState(() {
      result = "Result: $res";
    });
  }

  void subtract() {
    double res = Num1() - Num2();
    setState(() {
      result = "Result: $res";
    });
  }

  void multiply() {
    double res = Num1() * Num2();
    setState(() {
      result = "Result: $res";
    });
  }

  void divide() {
    double num2 = Num2();
    setState(() {
      if (num2 == 0) {
        result = "Error: Division by zero";
      } else {
        double res = Num1() / num2;
        result = "Result: $res";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: c1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter first number"),
            ),
            TextField(
              controller: c2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter second number"),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: add,
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: subtract,
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: multiply,
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: divide,
                  child: Text('/'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              result,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
