import 'package:aplikasi_novel/widget/judul.dart';
import 'package:flutter/material.dart';

class HalamanBaca extends StatelessWidget {
  const HalamanBaca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Judul(text:'Baca Novel'),
        ],
      ),
    );
  }
}
