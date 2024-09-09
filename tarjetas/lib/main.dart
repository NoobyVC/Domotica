import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarjetas',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class cardimage extends StatelessWidget {
  const cardimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
