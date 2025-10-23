import 'package:flutter/material.dart';
import 'package:wisata_candi_muhammadhafis/data/candi_data.dart';
import 'package:wisata_candi_muhammadhafis/screens/profile_screen.dart';
import 'screens/detail_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileScreen(),
    );
  }
}









