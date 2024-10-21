import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:typed_data';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bluetooth LED control',
      //home: PageBT(),
      home: PageBT(),
    );
  } // fin del metodo build
} // fin de la clase MyApp

class PageBT extends StatefulWidget {
  const PageBT({super.key});

  @override
  State<PageBT> createState() => _PageBTState();
}

class _PageBTState extends State<PageBT> {
  BluetoothConnection? connection;
  bool isConnected = false;
  String _statusMessage = 'Iniciando...';

  @override
  void initState() {
    super.initState();
    _requestBluetoothPermissions(); // Solicita permisos en la inicialización
  }

  Future<void> _requestBluetoothPermissions() async {
    if (await Permission.bluetoothScan.isDenied ||
        await Permission.bluetoothConnect.isDenied ||
        await Permission.location.isDenied) {
      await [
        Permission.bluetoothScan,
        Permission.bluetoothConnect,
        Permission.location, // Android 12+
      ].request();
    }
    _connectToBluetooth();
  }

  Future<void> _connectToBluetooth() async {
    try {
      // Replace this with the address of your ESP32
      final address = '08:b6:1f:33:4e:b4';
      connection = await BluetoothConnection.toAddress(address);
      setState(() {
        isConnected = true;
        _statusMessage = 'Conectado al dispositivo';
      });
    } catch (e) {
      setState(() {
        _statusMessage = 'Error al conectar: $e';
      });
    }
  }

  void _sendData(String data) async {
    if (connection != null && connection!.isConnected) {
      connection!.output.add(Uint8List.fromList(data.codeUnits));
      await connection!.output.allSent;
    }
  }

  @override
  void dispose() {
    connection?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control LED via BT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: isConnected ? () => _sendData('1') : null,
              child: const Text('Encender LED'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isConnected ? () => _sendData('0') : null,
              child: const Text('Apagar LED'),
            ),
            const SizedBox(height: 20),
            Text(
              _statusMessage,
              style: TextStyle(color: Colors.red, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  } // fin del metodo build
}// fin de la clase PageBT
