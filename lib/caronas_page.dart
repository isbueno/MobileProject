import 'package:flutter/material.dart';

class Carona extends StatefulWidget {
  const Carona({super.key});

  @override
  State createState() {
    return _CaronaState();
  }
}

class _CaronaState extends State {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Caronas', selectionColor: Colors.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Color(0xff17882c) , Color(0xff00510f)]),
          ),
      ),
    ),
    body: const Text("Hello Search page!"),
    );
  }
}
