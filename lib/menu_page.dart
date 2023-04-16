import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: (
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: 
                const [ 
                  Center(child: Text('Lorem Ipsum')),
                  Center(child: Text('Lorem Ipsum')),
                  Center(child: Text('Lorem Ipsum')),
                ],
                )
              )
          ),
      );
  }
}