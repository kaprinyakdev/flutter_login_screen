import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: 
          GestureDetector(
              onTap: () {FocusScope.of(context).unfocus();
              },
            child: ListView(children: <Widget>[
              // TEXT - felhasználónév
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                child: Text(
                  'Felhasználónév',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Kérem a felhasználónevet',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        )),
                  )),
              Container(
                  child: Text(
                'Jelszó',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ))
            ])));
  }
}
