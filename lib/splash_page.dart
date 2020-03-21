import 'package:flutter/material.dart';
import 'dart:async';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/splash.png'), fit: BoxFit.fill)),
    );
  }

  @override
  void initState() {
    openLogin() ;
  }

  Future<Timer> openLogin() async{
     return new Timer(Duration(seconds: 2), onLoading) ;
  }

  onLoading ()async{
    Navigator.of(context ).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
  }


}
