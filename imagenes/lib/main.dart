import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagenes APP',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Material App Bar'),
        ),
        body: ListView(
          children: [
            Image.asset("assets/images/ai.png"),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        child: Text('Ola'),
                      )
                    ],
                  )),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text('255')
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text('Waos, que pro'),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.insert_emoticon_sharp),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blue), label: 'inicio'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              label: 'Buscar')
        ]),
        backgroundColor: Colors.blueGrey,
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Dale mi loco 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Dale mi loco 2'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Dale mi loco 3'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Dale mi loco 4'),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
