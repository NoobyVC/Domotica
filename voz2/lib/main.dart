import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asistente Voz uwu',
      home: AsistenteVoz(),
    );
  }
}

class AsistenteVoz extends StatefulWidget {
  const AsistenteVoz({super.key});

  @override
  State<AsistenteVoz> createState() => _AsistenteVozState();
}

class _AsistenteVozState extends State<AsistenteVoz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mira nomas que pro este asisente'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Bienvenute"),
            )
          ],
        ),
      ),
    );
  }
}
