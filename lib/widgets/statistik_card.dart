import 'package:flutter/material.dart';
import 'package:study_case_learing/models/stats_item.dart';

class StatistikCard extends StatelessWidget {
  final List<StatItem> stats;

  const StatistikCard({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const Text(
            'STATISTIK',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: stats.map((stat) => _KotakStat(stat: stat)).toList(),
          ),
        ],
      ),
    );
  }
}

class _KotakStat extends StatelessWidget {
  final StatItem stat;

  const _KotakStat({required this.stat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: stat.color[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            stat.showStar
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        stat.value,
                        style: TextStyle(
                          color: stat.color,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.star, color: Colors.amber, size: 18),
                    ],
                  )
                : Text(
                    stat.value,
                    style: TextStyle(color: stat.color, fontSize: 20),
                  ),
            Text(
              stat.label,
              style: TextStyle(color: stat.color, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}