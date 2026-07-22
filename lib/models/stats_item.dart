import 'package:flutter/material.dart';

class StatItem {
  final String value;
  final String label;
  final MaterialColor color;
  final bool showStar;

  StatItem({
    required this.value,
    required this.label,
    required this.color,
    this.showStar = false,
  });
}