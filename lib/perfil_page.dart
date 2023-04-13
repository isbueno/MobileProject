import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State createState() {
    return _PerfilState();
  }
}

class _PerfilState extends State {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu perfil"),
      ),
      body: const Text("Hello Perfil page!")
    );
  }
}
