import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_screen/mytodos.dart';
import 'package:flutter_login_screen/settings.dart';
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
    Settings(),
    MyTodos(),
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
              icon: new Icon(Icons.people), title: new Text('My profile')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.today), title: new Text('My Todos')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.settings), title: new Text('Settings'))
        ],
      ),
    );
  }
}
 