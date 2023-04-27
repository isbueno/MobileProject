import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  const Contato({super.key});

  @override
  State createState() {
    return _ContatoState();
  }
}

class _ContatoState extends State {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text('Entre em contato', selectionColor: Colors.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Color(0xff17882c) , Color(0xff00510f)]),
          ),
        ),
      ),
      body: Container(
        color: const Color(0xfff4f4f4),
        height: 200,
        width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(padding: EdgeInsets.only(left: 20.0),
                  child: 
                    Text('Entre em contato conosco!',
                      style: TextStyle(fontSize: 30, color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                     )
                ),
                Padding(padding: EdgeInsets.only(left: 20.0),
                  child:
                    Text('Estamos ansiosos para ouvir de você e ajudá-lo em tudo o que precisar. Envie-nos uma mensagem e entraremos em contato o mais breve possível.',
                      style: TextStyle( fontSize: 16, color: Color(0xff1d1d1d),),
                      textAlign: TextAlign.left,
                    ),
                ),
              ],
            ),
          ),
      );
  }
}
