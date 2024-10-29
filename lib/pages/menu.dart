import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  // Daftar menu
  final List<String> menuItems = [
    'Home',
    'Profile',
    'Settings',
    'About',
    'Logout'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.menu), 
            title: Text(menuItems[index]), 
            trailing: Icon(Icons.arrow_forward), 
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${menuItems[index]} clicked')),
              );
            },
          );
        },
      ),
    );
  }
}