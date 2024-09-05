import 'package:flutter/material.dart';

class sarp extends StatelessWidget {
  const sarp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seguridad de Acceso a Redes Publicas'),
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
                  child: Image.asset('asset/images/sarp.jpeg'), // Imagen local
                ),
                const SizedBox(
                    height: 16.0), // Espacio entre la imagen y el texto
                const Text(
                  'Se refiere a las medidas y tecnologías utilizadas para proteger las redes públicas (como Wi-Fi y redes móviles) contra accesos no autorizados y amenazas. Estas medidas incluyen autenticación, cifrado de datos y controles de acceso para asegurar la integridad, confidencialidad y disponibilidad de la información en redes abiertas.',
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
