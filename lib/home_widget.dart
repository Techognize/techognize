import 'package:flutter/material.dart';
import 'account_widget.dart';
import 'library_widget.dart';
import 'marketplace_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    AccountWidget('Account'),
    LibraryWidget('Library'),
    MarketplaceWidget('Marketplace'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Techognize'),
        // title: Image.asset('assets/images/icons/logo/purple-white-banner.png', fit: BoxFit.cover),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Library'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store), 
            title: Text('Marketplace'),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
