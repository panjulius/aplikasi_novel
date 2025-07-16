import 'package:aplikasi_novel/widget/judul.dart';
import 'package:flutter/material.dart';

class HalamanProfil extends StatefulWidget {
  const HalamanProfil({super.key});

  @override
  State<HalamanProfil> createState() => _HalamanProfilState();
}

class _HalamanProfilState extends State<HalamanProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Judul(text: 'Profil Pengguna'),
        ],
      ),
    );
  }
}
