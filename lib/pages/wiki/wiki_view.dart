import 'package:aplikasi_novel/widget/judul.dart';
import 'package:flutter/material.dart';

class HalamanWiki extends StatefulWidget {
  const HalamanWiki({super.key});

  @override
  State<HalamanWiki> createState() => _HalamanWikiState();
}

class _HalamanWikiState extends State<HalamanWiki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Judul(text: 'Wiki Novel'),
        ],
      ),
    );
  }
}
