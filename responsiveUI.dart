import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main App Widget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive UI',
      home: Responsive(),
    );
  }
}

class Responsive extends StatefulWidget {
  const Responsive({super.key});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
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

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile"),
      ),
      body: const Center(
        child: Icon(
          Icons.phone_android, // Mobile icon
          size: 100,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tablet"),
      ),
      body: const Center(
        child: Icon(
          Icons.tablet_mac, // Tablet icon
          size: 100,
          color: Colors.green,
        ),
      ),
    );
  }
}

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Desktop"),
      ),
      body: const Center(
        child: Icon(
          Icons.desktop_mac, // Desktop icon
          size: 100,
          color: Colors.orange,
        ),
      ),
    );
  }
}
