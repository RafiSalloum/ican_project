import 'package:flutter/material.dart';

class DrawerItem {
  final String label;
  final IconData icon;
  final Widget widget;
  const DrawerItem({required this.widget, required this.label, required this.icon});
}