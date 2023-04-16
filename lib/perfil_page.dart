import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

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
        centerTitle: true,
        title: const Text('Meu perfil', selectionColor: Colors.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Color(0xff17882c) , Color(0xff00510f)]),
          ),
        ),
      ),
      body: const Text("Hello Perfil page!"),
    );
  }
}
