import 'package:flutter/material.dart';

class informatica extends StatelessWidget {
  const informatica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informatica Forense'),
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
                  child:
                      Image.asset('asset/images/forense.jpeg'), // Imagen local
                ),
                const SizedBox(
                    height: 16.0), // Espacio entre la imagen y el texto
                const Text(
                  'La informática forense es una disciplina que se encarga de la investigación y análisis de dispositivos digitales para obtener evidencia que pueda ser utilizada en procedimientos legales. Su objetivo es descubrir, preservar y presentar información relevante de forma que sea aceptable en un tribunal de justicia.',
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
