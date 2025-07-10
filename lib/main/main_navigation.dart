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

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}