import 'package:flutter/material.dart'; // trás todos os widget do material design

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.red,
        child: const Text("Olá mundo"),
      ),
    );
  }
}
