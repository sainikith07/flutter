import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/images/img1.jpeg'),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text("Click"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
