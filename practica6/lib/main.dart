import 'package:flutter/material.dart';
import 'package:practica6/comunicacion.dart';
import 'package:practica6/srap.dart';
import 'package:practica6/drones.dart';
import 'package:practica6/informatica.dart';
import 'package:practica6/domotica.dart';

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
        title: Text(':O'),
        backgroundColor: Colors.black38,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
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
              leading: Icon(Icons.schedule),
              title: Text('Mi Horario'),
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Domotica e Inmotica'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => domotica()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Seguridad de Acceso a Redes Publicas'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => srap()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Comunicación Digital'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => comunicacion()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Drones'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => drones()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Informatica Forense'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => informatica()));
              },
            ),
            const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Salir'),
            ),
          ],
        ),
      ),
    );
  }
}
