import 'package:flutter/material.dart';
import 'package:tayar/cut_corners_border.dart';
import 'package:tayar/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 280,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/splash.png'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 45,
                ),
                TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      border: CutCornersBorder(),
                      hintText: 'Enter email address'),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      border: CutCornersBorder(),
                      hintText: 'Enter password'),
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonTheme(
                  minWidth: 200,
                  height: 50,
                  buttonColor: Colors.pinkAccent,
                  child: RaisedButton(
                    child: Text(
                      "SIGN IN ",
                      style: TextStyle(color: Colors.white),
                    ),
                    elevation: 8.0,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
