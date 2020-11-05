import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool status = false;

  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
        color: backgroundColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(fontFamily: 'Arial', fontSize: 30),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Dark mode', style: TextStyle(fontFamily: 'Arial', fontSize: 18)),
                Switch(
                  activeColor: Colors.amber,
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value;
                      if (status == true) {
                        backgroundColor = Colors.black;
                      } else {
                        backgroundColor = Colors.white;
                      }
                    });
                  },
                )
              ],
            )
          ],
        ));
  }
}
