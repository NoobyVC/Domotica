import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Prueba de app pro',
            style: TextStyle(color: Colors.white),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero, // Elimina el padding superior
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue, // Cambia el color de fondo del encabezado
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(backgroundImage: AssetImage("icon/a.jpg")),
                    SizedBox(height: 20.0),
                    Text(
                      'YaelVC',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'usuario@ejemplo.com',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.face, color: Colors.blue),
                title: Text('Rectoria'),
                onTap: () {
                  // Acción para el botón de Rectoria
                },
              ),
              ListTile(
                leading: Icon(Icons.book, color: Colors.blue),
                title: Text('Biblioteca'),
                onTap: () {
                  // Acción para el botón de Biblioteca
                },
              ),
              ListTile(
                leading: Icon(Icons.science, color: Colors.blue),
                title: Text('Laboratorios de Reddit'),
                onTap: () {
                  // Acción para el botón de Laboratorios de Reddit
                },
              ),
              Divider(), // Línea divisoria
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.red),
                title: Text('Salir'),
                onTap: () {
                  // Acción para el botón de salir
                },
              ),
            ],
          ),
        ) /*DrawerHeader: Agregué un DrawerHeader para incluir información del usuario, como un icono, nombre y correo electrónico, lo que proporciona un aspecto más profesional y personalizado.
Consistencia de colores: Se utilizó un color constante (azul) para los iconos, lo que da un aspecto más uniforme y profesional. Solo el ícono de "Salir" se mantiene en rojo para resaltar su importancia.
Iconos adecuados: Cambié algunos íconos por otros más representativos para mejorar la comprensión y la usabilidad.
Acciones: Se añadieron onTap en los ListTile para que puedan ser funcionales.
Línea divisoria: Se añadió un Divider para separar claramente la opción de "Salir" del resto, mejorando la organización visual.
 */
        ,
        body: const Center(
          child: Text(
            'Flutter es un marco de código abierto desarrollado y compatible con Google. Los desarrolladores de front-end y pila completa utilizan Flutter para crear una interfaz de usuario (IU) de aplicación para varias plataforma con un único código base.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontFamily: 'Cambria'),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('Aprove'),
          icon: Icon(Icons.thumb_up),
        ),
      ),
    );
  }
}
