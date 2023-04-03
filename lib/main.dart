import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carona IF',
      home: Home(),
    );
  }
}