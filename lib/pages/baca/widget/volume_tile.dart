import 'package:flutter/material.dart';

class VolumeTile extends StatelessWidget {
  const VolumeTile({super.key});

  // Data dummy untuk volume dan chapter
  final List<Map<String, dynamic>> volumes = const [
    {
      'title': 'Volume 1',
      'description': 'Awal Petualangan',
      'chapters': ['Chapter 1', 'Chapter 2', 'Chapter 3']
    },
    {
      'title': 'Volume 2',
      'description': 'Konflik Berkembang',
      'chapters': ['Chapter 4', 'Chapter 5']
    },
    {
      'title': 'Volume 3',
      'description': 'Final Battle',
      'chapters': ['Chapter 6', 'Chapter 7', 'Chapter 8', 'Chapter 9']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(), // Non-scrollable (scroll diatur di parent)
      shrinkWrap: true, // Menyesuaikan tinggi konten
      itemCount: volumes.length,
      itemBuilder: (context, volumeIndex) {
        final volume = volumes[volumeIndex];
        return ExpansionTile(
          leading: const Icon(Icons.book),
          title: Text(volume['title']),
          subtitle: Text(volume['description']),
          children: [
            // List chapter untuk volume ini
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: volume['chapters'].length,
              itemBuilder: (context, chapterIndex) {
                return ChapterTile(
                  chapterTitle: volume['chapters'][chapterIndex],
                  volumeTitle: volume['title'],
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class ChapterTile extends StatelessWidget {
  final String chapterTitle;
  final String volumeTitle;

  const ChapterTile({
    super.key,
    required this.chapterTitle,
    required this.volumeTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(chapterTitle),
      leading: const Icon(Icons.article, size: 20),
      contentPadding: const EdgeInsets.only(left: 40), // Indentasi chapter
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Membuka $chapterTitle dari $volumeTitle'),
          ),
        );
        // Navigasi ke halaman baca chapter bisa ditambahkan di sini
      },
    );
  }
}