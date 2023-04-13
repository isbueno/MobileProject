import 'package:flutter/material.dart';

class CaronaPage extends StatefulWidget {
  const CaronaPage({super.key});

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
        title: const Text("Pesquise por caronas!"),
      ),
      body: const Text("Hello Search page!")
    );
  }
}
