import 'package:flutter/material.dart';
import 'package:practica5/automatas.dart';
import 'package:practica5/domotica.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mas Apps dentro de una :o'),
        backgroundColor: Colors.black38,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('ola'),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
            ListTile(
              title: Text('Domotica e Inmotica'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => domotica()));
              },
            ),
            ListTile(
              title: Text('Automatas'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Automatas()));
              },
            ),
            ListTile(
              title: Text('Salir'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
