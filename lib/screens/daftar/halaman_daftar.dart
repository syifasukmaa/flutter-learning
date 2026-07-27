import 'package:flutter/material.dart';

class Proyek {
  final String nama;
  final String status;
  final Color warnaAvatar;
  final String inisial;
  final int progres;

  const Proyek({
    required this.nama,
    required this.status,
    required this.warnaAvatar,
    required this.inisial,
    required this.progres,
  });
}

final List<Proyek> semuaProyek = [
  Proyek(nama: 'App Kasir Flutter', status: 'Aktif',   warnaAvatar: Colors.purple,  inisial: 'A', progres: 75),
  Proyek(nama: 'Blog Personal',     status: 'Review',  warnaAvatar: Colors.blue,    inisial: 'B', progres: 60),
  Proyek(nama: 'Toko Online',       status: 'Aktif',   warnaAvatar: Colors.green,   inisial: 'C', progres: 45),
  Proyek(nama: 'Jadwal Kuliah',     status: 'Selesai', warnaAvatar: Colors.orange,  inisial: 'D', progres: 100),
  Proyek(nama: 'Weather App',       status: 'Selesai', warnaAvatar: Colors.red,     inisial: 'E', progres: 100),
];

class HalamanDaftar extends StatefulWidget {
  const HalamanDaftar({super.key});

  @override
  State<HalamanDaftar> createState() => _HalamanDaftarState();
}

class _HalamanDaftarState extends State<HalamanDaftar> {
  String _filterAktif = 'Semua';
  final List<String> _daftarFilter = ['Semua', 'Aktif', 'Review', 'Selesai'];

  List<Proyek> get _proyekTerfilter {
    if (_filterAktif == 'Semua') return semuaProyek;
    return semuaProyek.where((p) => p.status == _filterAktif).toList();
  }

  int _hitungStatus(String status) {
    if (status == 'Semua') return semuaProyek.length;
    return semuaProyek.where((p) => p.status == status).length;
  }

  Color _warnaBg(String status) {
    switch (status) {
      case 'Aktif':   return const Color(0xFFE8F5E9);
      case 'Review':  return const Color(0xFFFFF3E0);
      case 'Selesai': return Colors.purple.shade50;
      default:        return Colors.grey.shade100;
    }
  }

  Color _warnaText(String status) {
    switch (status) {
      case 'Aktif':   return Colors.green.shade800;
      case 'Review':  return Colors.orange.shade800;
      case 'Selesai': return Colors.purple.shade800;
      default:        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Daftar Proyek',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: _daftarFilter.map((filter) {
                final dipilih = _filterAktif == filter;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _filterAktif = filter),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 9),
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                        color: dipilih ? Colors.purple[400] : Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            filter,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: dipilih ? Colors.white : Colors.grey[600],
                            ),
                          ),
                          Text(
                            '(${_hitungStatus(filter)})',
                            style: TextStyle(
                              fontSize: 10,
                              color: dipilih ? Colors.white70 : Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          Expanded(
            child: _proyekTerfilter.isEmpty
                ? const Center(
                    child: Text('Tidak ada proyek di kategori ini.',
                        style: TextStyle(color: Colors.grey)),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: _proyekTerfilter.length,
                    itemBuilder: (context, index) {
                      final p = _proyekTerfilter[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 0.15),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: p.warnaAvatar,
                              child: Text(p.inisial,
                                  style: const TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(p.nama,
                                      style: const TextStyle(
                                          fontSize: 14, fontWeight: FontWeight.w500)),
                                  const SizedBox(height: 2),
                                  Text('Progres ${p.progres}%',
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.grey)),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                color: _warnaBg(p.status),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(p.status,
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: _warnaText(p.status))),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}