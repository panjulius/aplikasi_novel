import 'package:aplikasi_novel/pages/baca/baca_view.dart';
import 'package:aplikasi_novel/pages/profil/profil_view.dart';
import 'package:aplikasi_novel/pages/wiki/wiki_view.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [HalamanWiki(), HalamanBaca(), HalamanProfil()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () => _onItemTapped(1),
        backgroundColor: _selectedIndex == 1 ? Colors.blue : Colors.grey,
        child: Icon(Icons.book),
        tooltip: 'Baca',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 60,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => _onItemTapped(0),
              icon: Icon(Icons.bookmark),
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
              tooltip: 'Wiki',
            ),
            SizedBox(width: 40),
            IconButton(
              onPressed: () => _onItemTapped(2),
              icon: Icon(Icons.person),
              color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
              tooltip: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
