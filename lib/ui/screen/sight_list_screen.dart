import 'package:flutter/material.dart';

class SightListScreenWidget extends StatefulWidget {
  @override
  _SightListScreenWidget createState() => _SightListScreenWidget();
}

class _SightListScreenWidget extends State<SightListScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first App'),
        centerTitle: true,
        backgroundColor: Colors.purple,
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
