import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreen createState() => _SightListScreen();
}

class _SightListScreen extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
              style: TextStyle(
                fontFamily: 'Roboto',
                package: 'res',
                fontSize: 32,
              ),
              children: [
                TextSpan(
                    text: 'C',
                    style: TextStyle(
                      color: Colors.green,
                    )),
                TextSpan(
                    text: 'писок\n',
                    style: TextStyle(
                      color: Colors.black,
                    )),
                TextSpan(
                    text: 'и',
                    style: TextStyle(
                      color: Colors.yellow,
                    )),
                TextSpan(
                    text: 'нтересных мест',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ]),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 72,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: Center(
          child: Text(
        'Hello!',
        style: TextStyle(
          fontSize: 28,
        ),
      )),
    );
  }
}
