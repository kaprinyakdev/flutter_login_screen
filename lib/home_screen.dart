import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'PlaceholderWidget.dart';

class homeScreen extends StatefulWidget {
  String name;

  homeScreen(String nameValue) {
    this.name = nameValue;
  }

   @override
  _HomePageState createState() => _HomePageState();

}


  class _HomePageState extends State<homeScreen>{
  
  int _currentindex = 0;

  final List<Widget> _children = [
   PlaceholderWidget(Colors.white),
   PlaceholderWidget(Colors.deepOrange),
   PlaceholderWidget(Colors.green)
 ];

  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.black, title: Text(name)),
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() => _currentindex = value);
          
        },        
        currentIndex: _currentindex,
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
 