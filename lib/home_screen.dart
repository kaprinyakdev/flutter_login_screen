import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class homeScreen extends StatelessWidget {
  String name;

  homeScreen(String nameValue) {
    this.name = nameValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.black, title: Text(name)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.menu), title: new Text('menü')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.message), title: new Text('üzenetek')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('profile'))
        ],
      ),
    );
  }
}
