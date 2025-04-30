import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext x) {
    return MaterialApp(
      title: 'Responsive UI',

      home: const responsive(),
    );
  }
}
class Responsive extends StatelessWidget{
  const Responsive({super.key});

  @override
  Widget build(BuildContext x) {
    double width = MediaQuery.of(x).size.width;
    if (width <= 600) {
      return const Mobile();
    } else if (width <= 1200) {
      return const Tablet();
    } else {
      return const Desktop();
    }

  }
}

class Mobile extends StatelessWidget{
  const Mobile({super.key});

  @override
  Widget build(BuildContext x) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile"),
      ),
      body: const Center(
        child: Text("Mobile View"),
      ),
    );
  }
}
class Tablet extends StatelessWidget{
  const Tablet({super.key});

  @override
  Widget build(BuildContext x) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tablet"),
      ),
      body: center(
        child: Text("Mobile View"),
      ).
    );
  }
}
class Desktop extends StatelessWidget{
  const Desktop({super.key});

  @override
  Widget build(BuildContext x) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Desktop"),
        ),
        body: center(
          child: Text("Desktop View"),
        ).
    );
  }
}
