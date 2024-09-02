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
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.black54,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Automatas')],
              ),
            ),
          )
        ],
      ),
    );
  }
}
