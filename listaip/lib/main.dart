import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
