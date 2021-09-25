import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
};

Icon getIcon(String opt) {
  return Icon(_icons[opt], color: Colors.blue);
}
