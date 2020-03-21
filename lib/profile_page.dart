import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/profile.png'), fit: BoxFit.fill)),
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/account.png'))
            ),
          ) ,
          SizedBox(height: 10,),
          Text(
            "Mahmoud Sallam",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,) ,
          Container(
            color: Colors.white,
            child: Text(
              "       AVAILABLE       ",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
