import 'package:flutter/material.dart';

class MyTodos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyTodosState();
  }
}

class _MyTodosState extends State<MyTodos> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        color: Colors.lightBlue,
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/icon.png',
                      width: 40.0, height: 40.0, fit: BoxFit.fill),
                ),
                Text('Todo list',
                    style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 30,
                        color: Colors.white)),
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  'Add new task',
                  style: TextStyle(
                      fontFamily: 'Arial', fontSize: 18, color: Colors.white),
                ),
                TextField(
                  textAlign: TextAlign.center,
                )
              ],
            )
          ],
        ));
  }
}
