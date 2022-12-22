import 'package:uas/screen/beritascreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Berita',
      theme: ThemeData(appBarTheme: AppBarTheme(elevation: 0)),
      home: BeritaScreen(),
    );
  }
}
