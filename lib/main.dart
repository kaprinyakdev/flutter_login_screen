import 'package:flutter/material.dart';
import 'package:flutter_login_screen/background.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{

    @override
    Widget build(BuildContext context){
      return MaterialApp(
        title: 'Materialapp',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: HomePage(title: 'title')
      );
    }

}

class HomePage extends StatefulWidget {

  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomePageState createState() => HomePageState();
  
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: <Widget>[
          Background()
        ],
      ),
    );
  }
}
