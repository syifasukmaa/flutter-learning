import 'package:flutter/material.dart';

class TentangCard extends StatelessWidget {
  final String judul;
  final String isi;

  const TentangCard({super.key, required this.judul, required this.isi});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 8),
          Text(
            isi,
            style: TextStyle(color: Colors.grey[700], fontSize: 16),
          ),
        ],
      ),
    );
  }
}