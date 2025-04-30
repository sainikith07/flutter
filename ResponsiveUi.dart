import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive UI',
      home: Responsive(), // Fixed typo: responsive -> Responsive
    );
  }
}

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width <= 600) {
      return const Mobile();
    } else if (width <= 1200) {
      return const Tablet();
    } else {
      return const Desktop();
    }
  }
}

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
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

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tablet"),
      ),
      body: const Center(
        child: Text("Tablet View"), // Corrected text
      ),
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Desktop"),
      ),
      body: const Center(
        child: Text("Desktop View"),
      ),
    );
  }
}
