import 'package:flutter/material.dart';
import 'package:study_case_learing/models/stats_item.dart';
import 'package:study_case_learing/widgets/statistik_card.dart';
import '../../widgets/profil_card.dart';
import '../../widgets/tentang_card.dart';
import '../daftar/halaman_daftar.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StatItem> stats = [
      StatItem(value: '48', label: 'Commit', color: Colors.indigo),
      StatItem(value: '12', label: 'Proyek', color: Colors.orange),
      StatItem(value: '5',  label: 'Rating', color: Colors.blue, showStar: true),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Saya',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple[400],
        // Tombol navigasi ke halaman daftar proyek
        actions: [
          IconButton(
            icon: const Icon(Icons.folder_open, color: Colors.white),
            tooltip: 'Daftar Proyek',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HalamanDaftar()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            ProfilCard(
              nama: 'Andi Saputra',
              jabatan: 'Flutter Developer',
              inisial: 'A',
            ),
            const SizedBox(height: 20),

            StatistikCard(stats: stats),
            const SizedBox(height: 20),

            TentangCard(
              judul: 'Tentang Saya',
              isi: 'Suka ngoding Flutter sejak 2021. Sedang belajar dari playlist Kuldii Project 🚀',
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.purpleAccent,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Fitur edit profil coming soon!')),
                );
              },
              child: const Text('Edit Profil'),
            ),
          ],
        ),
      ),
    );
  }
}