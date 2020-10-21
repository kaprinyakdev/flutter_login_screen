import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(children: <Widget>[
              // TEXT - felhasználónév
              Container(
                alignment: Alignment.center,
                padding:
                    EdgeInsets.fromLTRB(0, 100, 0, 0), // EdgeInsets.all(20),
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
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  width: 2000,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Kérem a felhasználónevet',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                        )),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text(
                    'Jelszó',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  )),
              Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Kérem a jelszót',
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 20)),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: ButtonTheme(
                    minWidth: 150,
                    height: 60,
                    child: RaisedButton(
                      onPressed: null,
                      child: Text(
                        'Bejelentkezés',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Arial',
                            fontSize: 18),
                      ),
                    ),
                  ))
            ])));
  }
}
