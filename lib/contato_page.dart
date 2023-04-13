import 'package:flutter/material.dart';

class ContatoPage extends StatefulWidget {
  const ContatoPage({super.key});

  @override
  State createState() {
    return _ContatoState();
  }
}

class _ContatoState extends State {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entre em contato"),
      ),
      body: const Text("Hello Contato page!")
    );
  }
}
