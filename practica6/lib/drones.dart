import 'package:flutter/material.dart';

class drones extends StatelessWidget {
  const drones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drones'),
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
                  child: Image.asset('asset/images/dron.jpg'), // Imagen local
                ),
                const SizedBox(
                    height: 16.0), // Espacio entre la imagen y el texto
                const Text(
                  'Los drones son vehículos aéreos no tripulados (VANT) que pueden ser controlados de forma remota o operar de manera autónoma mediante programación y sensores. Se utilizan en una amplia variedad de aplicaciones, desde la vigilancia hasta la entrega de paquetes.',
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
