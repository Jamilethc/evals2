import 'package:flutter/material.dart';


class Acercade extends StatelessWidget {
  const Acercade({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tetx'),
        ),
        body: Center(
        child: Image.asset("images/foto.jpg")),
      ),
    );
  }
}