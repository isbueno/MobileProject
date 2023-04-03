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
    const PlaceholderWidget(Colors.indigo)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Carona IF', style: Colors.black),
        backgroundColor: const Color(0xfff4f4f4),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Caronas',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil'
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