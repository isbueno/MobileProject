import 'package:flutter/material.dart';
import 'home_page.dart';
import 'caronas_page.dart';
import 'perfil_page.dart';
import 'contato_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carona IF',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
  State createState() => MainPageState();
}


class MainPageState extends State<MainPage>{

  late int currentIndex = 0;
  final screens = [
    const Home(),
    const CaronaPage(),
    const PerfilPage(),
    const ContatoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screens[currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color(0xff333333),
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff333333),),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car, color: Color(0xff333333),),
            label: 'Caronas',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Color(0xff333333),),
              label: 'Perfil'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline, color: Color(0xff333333),),
              label: 'Contato'
          )
        ],
      ),
    );
}
}

