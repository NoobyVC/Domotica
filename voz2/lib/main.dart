import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

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
  FlutterTts bing_chilling = FlutterTts();
  String speako = "Hola uwu";
  Future<void> _speek() async {
    await bing_chilling.setLanguage("es-ES");
    await bing_chilling.setPitch(10.0);
    await bing_chilling.speak(speako);
    await bing_chilling.setVolume(5);
  }

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
              onChanged: (String value) {
                setState(() {
                  speako = value;
                });
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: _speek,
              child: Text('Habla'),
            )
          ],
        ),
      ),
    );
  }
}
