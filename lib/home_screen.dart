import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class homeScreen extends StatelessWidget{

  String name;

  homeScreen(String nameValue){
      this.name = nameValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: Text(name)),
      body: Text(
                  'Felhasználónév',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
    
    ));
  }
}