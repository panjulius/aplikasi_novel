import 'package:aplikasi_novel/pages/baca/widget/volume_tile.dart';
import 'package:aplikasi_novel/widget/judul.dart';
import 'package:flutter/material.dart';

class HalamanBaca extends StatefulWidget {
  const HalamanBaca({super.key});

  @override
  State<HalamanBaca> createState() => _HalamanBacaState();
}

class _HalamanBacaState extends State<HalamanBaca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Tambahkan SafeArea untuk hindari overflow
        child: SingleChildScrollView(
          // Gunakan SingleChildScrollView jika konten panjang
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, // Agar anak widget memenuhi lebar
              children: [
                const Judul(text: 'Baca Novel'),
                const SizedBox(height: 20),
                SizedBox(
                  // Beri constraints eksplisit pada VolumeTile
                  height: MediaQuery.of(context).size.height *
                      0.8, // Atur tinggi sesuai kebutuhan
                  child:
                      VolumeTile(), // Pastikan VolumeTile menggunakan ListView dengan constraints
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
