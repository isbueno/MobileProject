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
              colors: <Color>[Color(0xff294656) , Color(0xff294656)]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
        color: const Color(0xffffffff),
        height: 400,
        width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Padding(padding: const EdgeInsets.only(top: 20.0, bottom: 10.0, left: 20, right: 20),
                  child: 
                  RichText(
                    text: const TextSpan(
                      text: 'Entre em ',
                      style: TextStyle(fontSize: 30, color: Color(0xff1B2E35), fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'contato!',
                          style: TextStyle(fontSize: 30, color: Color(0xff5AE4A8)),
                        ),
                      ],
                    ),
                  )
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                  child:
                    Text('Estamos ansiosos para saber o que você tem a dizer. Envie-nos uma mensagem e entraremos em contato assim que possível.',
                      style: TextStyle( fontSize: 16, color: Color(0xff7a7a7a),),
                      textAlign: TextAlign.center,
                    ),
                ),
                const Expanded(child: 
                  SizedBox(
                      child: Image(image: AssetImage('../imagens/entre-em-contato.jpg'), fit: BoxFit.contain)
                    )
                  ),                
              ],
            ),
          ),
      )
    );
  }
}
