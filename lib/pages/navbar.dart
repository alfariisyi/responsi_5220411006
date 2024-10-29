import 'package:faridz_006/pages/menu.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Navbar extends StatefulWidget {
  Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [Home(), Menu()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBar,
        backgroundColor: Colors.grey, // Ubah warna latar belakang
        selectedItemColor: Colors.white, // Warna item yang dipilih
        unselectedItemColor: Colors.black, // Warna item yang tidak dipilih
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}