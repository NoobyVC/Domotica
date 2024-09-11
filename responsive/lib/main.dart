import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class responsiveDrawe extends StatelessWidget {
  const responsiveDrawe({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Coso responsivo'),
        ),
        drawer: ancho < 600 ? movil() : tableta());
  }
}

class movil extends StatelessWidget {
  const movil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class tableta extends StatelessWidget {
  const tableta({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
