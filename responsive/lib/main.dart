import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: responsiveDrawe());
  }
}

class responsiveDrawe extends StatelessWidget {
  const responsiveDrawe({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Coso responsivo'),
        ),
        drawer: ancho < 600 ? movil() : tableta());
  }
}

class movil extends StatelessWidget {
  const movil({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio Movil'),
          )
        ],
      ),
    );
  }
}

class tableta extends StatelessWidget {
  const tableta({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio tableta'),
          )
        ],
      ),
    );
  }
}
