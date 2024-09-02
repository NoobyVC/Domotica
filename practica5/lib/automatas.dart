import 'package:flutter/material.dart';

class Automatas extends StatelessWidget {
  const Automatas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otra pagina 💀'),
        backgroundColor: Colors.black38,
      ),
      body: Stack(
        children: [
          Image.network(
            'https://4.bp.blogspot.com/-mk-XSwvjSL8/WeRJNaNTYYI/AAAAAAAAA4c/kgcctqbZuF8HrXQU44B02sWsaqiwZjl0QCLcBGAs/s640/robotPensando.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
