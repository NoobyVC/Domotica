import 'package:flutter/material.dart';
import 'package:practica6/comunicacion.dart';
import 'package:practica6/sarp.dart';
import 'package:practica6/drones.dart';
import 'package:practica6/informatica.dart';
import 'package:practica6/domotica.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación Movil Test #1'),
        backgroundColor: Colors.black38,
      ),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/4/47/CUC_LOGO.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Usuario'),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 50.0,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.schedule),
              title: const Text('Mi Horario'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Domotica e Inmotica'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const domotica()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Seguridad de Acceso a Redes Publicas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const sarp()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Comunicación Digital'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const comunicacion()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Drones'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const drones()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Informatica Forense'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const informatica()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Salir'),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
