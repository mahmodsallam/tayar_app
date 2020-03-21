import 'package:flutter/material.dart';
import 'package:tayar/profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _title  = "New Feed ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.watch),
            title: Text('New feeds '),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('Account'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            title: Text('More'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: _getContent(),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex==0 )
        _title = "New Feed " ;
      else if (_selectedIndex==1)
        _title = "Account" ;
      else
        _title = "More" ;
    });
  }
  Widget _getContent() {
    if(_selectedIndex==0)
      return Container();
    else if (_selectedIndex==1)
      return ProfilePage() ;
    else
      return Container() ;

  }
}


