import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: SimpleCalculator()));

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  double num1 = 0;
  double num2 = 0;
  String result = "";

  void add() {
    double res = num1 + num2;
    setState(() => result = "Result: $res");
  }

  void subtract() {
    double res = num1 - num2;
    setState(() => result = "Result: $res");
  }

  void multiply() {
    double res = num1 * num2;
    setState(() => result = "Result: $res");
  }

  void divide() {
    if (num2 == 0) {
      setState(() => result = "Error: Division by zero");
    } else {
      double res = num1 / num2;
      setState(() => result = "Result: $res");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'First number'),
              onChanged: (val) => num1 = double.tryParse(val) ?? 0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Second number'),
              onChanged: (val) => num2 = double.tryParse(val) ?? 0,
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(onPressed: add, child: Text('+')),
                ElevatedButton(onPressed: subtract, child: Text('-')),
                ElevatedButton(onPressed: multiply, child: Text('*')),
                ElevatedButton(onPressed: divide, child: Text('/')),
              ],
            ),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
