import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarjetas',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Uso de tarjetas'),
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            children: [cardimage(), cardimagebutton()],
          )),
    );
  }
}

class cardimage extends StatelessWidget {
  const cardimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/4/47/CUC_LOGO.png'),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Card con imagen del Centro',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class cardimagebutton extends StatelessWidget {
  const cardimagebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1503256207526-0d5d80fa2f47?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZG9nfGVufDB8fDB8fHww',
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text('Hola'),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Hola 2'))
        ],
      ),
    );
  }
}
