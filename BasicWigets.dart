import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple UI"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Welcome!",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Image.asset('assets/images/img1.jpeg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button A pressed");
                    },
                    child: Text("Button A"),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button B pressed");
                    },
                    child: Text("Button B"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
