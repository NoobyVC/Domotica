import 'package:flutter/material.dart';

class comunicacion extends StatelessWidget {
  const comunicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comunicación Digital'),
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
                  child: Image.asset('asset/images/comu.jpg'), // Imagen local
                ),
                const SizedBox(
                    height: 16.0), // Espacio entre la imagen y el texto
                const Text(
                  'Es el intercambio de información a través de medios electrónicos, como correos electrónicos, mensajes instantáneos y redes sociales. Utiliza tecnologías digitales para transmitir, recibir y almacenar datos de manera eficiente, permitiendo una comunicación rápida y accesible a nivel global.',
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
