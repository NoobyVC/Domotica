import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monitero de Redes',
      debugShowCheckedModeBanner: false,
      home: listasIp(),
    );
  }
}

class listasIp extends StatefulWidget {
  const listasIp({super.key});

  @override
  State<listasIp> createState() => _listasIpState();
}

class _listasIpState extends State<listasIp> {
  final List<Map<String, String>> devices = [
    {'Name': 'PC-01', 'IP:': '0.0.0.0'},
    {'Name': 'PC-02', 'IP:': '0.0.0.0'},
    {'Name': 'PC-03', 'IP:': '0.0.0.0'},
    {'Name': 'PC-04', 'IP:': '0.0.0.0'},
    {'Name': 'PC-05', 'IP:': '0.0.0.0'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ojo, listas on line 🫵😂'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.device_hub),
              title: Text(devices[index]['Name']!),
              subtitle: Text('IP: ${devices[index]['IP:']}'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
        tooltip: 'Actualizar lista de Red',
      ),
    );
  }
}
