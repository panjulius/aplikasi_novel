import 'package:flutter/material.dart';

class Judul extends StatelessWidget {
  final String text;

  const Judul({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [const Color(0xFF422A12), const Color(0xFF925212), const Color(0xFFF39C46)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}