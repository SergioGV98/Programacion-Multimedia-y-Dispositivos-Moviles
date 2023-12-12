import 'package:flutter/material.dart';

class Option {
  final IconData icon;
  final String label;
  final Function() onTap;

  const Option({
    required this.icon,
    required this.label,
    required this.onTap,
  });
}
