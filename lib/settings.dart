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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Settings',
            style: TextStyle(fontFamily: 'Arial', fontSize: 20),
          ),
          Text('asd'),
          Switch(
            activeColor: Colors.amber,
            value: status,
            onChanged: (value) {
              print("VALUE : $value");
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
      ),
    );
  }
}
