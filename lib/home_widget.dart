import 'package:flutter/material.dart';
import 'placeholder_widget.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  late int _currentIndex = 0;
  final List _children = [
    const PlaceholderWidget(Colors.white),
    const PlaceholderWidget(Colors.purple),
    const PlaceholderWidget(Colors.indigo),
    const PlaceholderWidget(Colors.orange),
    const PlaceholderWidget(Colors.brown)
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Carona IF', selectionColor: Colors.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Color(0xff17882c) , Color(0xff00510f)]),
          ),
        ),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color(0xff333333),
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
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
            icon: Icon(Icons.menu, color: Color(0xff333333),),
            label: 'Menu',
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
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}