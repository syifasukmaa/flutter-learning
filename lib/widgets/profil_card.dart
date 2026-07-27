import 'package:flutter/material.dart';

class ProfilCard extends StatelessWidget {
  final String nama;
  final String jabatan;
  final String inisial;

  const ProfilCard({
    super.key,
    required this.nama,
    required this.jabatan,
    required this.inisial,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            child: Text(
              inisial,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            nama,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            jabatan,
            style: TextStyle(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}