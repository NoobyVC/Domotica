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
        home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación Movil Test #1'),
        backgroundColor: Colors.black38,
      ),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.all(16.0), // Ajusta el padding a tu gusto
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/4/47/CUC_LOGO.png',
                fit: BoxFit.contain, // Ajusta cómo se debe mostrar la imagen
              ),
            ),
          ),
        ],
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
              leading: Icon(Icons.school),
              title: Text('Seguridad de Acceso a Redes Publicas'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => sarp()));
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Comunicación Digital'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => comunicacion()));
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Drones'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => drones()));
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Informatica Forense'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => informatica()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Salir'),
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
