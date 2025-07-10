import 'package:aplikasi_novel/halaman_baca/baca_view.dart';
import 'package:aplikasi_novel/halaman_profil/profil_view.dart';
import 'package:aplikasi_novel/wiki/wiki_view.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HalamanBaca(),
    HalamanWiki(),
    HalamanProfil()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Baca'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Wiki'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ]),
    );
  }
}