import 'package:flutter/material.dart';

class domotica extends StatelessWidget {
  const domotica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Domótica e Inmótica'),
        backgroundColor: Colors.black38,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centrar la columna verticalmente
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('asset/images/dom.jpg'), // Imagen local
                ),
                const SizedBox(
                    height: 16.0), // Espacio entre la imagen y el texto
                const Text(
                  'La domótica e inmótica son tecnologías que automatizan el control de sistemas como iluminación, seguridad y climatización en viviendas y edificios. La domótica se aplica a hogares, mientras que la inmótica se enfoca en grandes edificios, optimizando eficiencia, seguridad y confort.',
                  style: TextStyle(
                    fontSize: 14.0, // Ajusta el tamaño del texto
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
