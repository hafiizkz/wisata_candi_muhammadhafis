import 'package:flutter/material.dart';
import 'package:wisata_candi_muhammadhafis/models/candi.dart';
import 'package:wisata_candi_muhammadhafis/widgets/item_card.dart';

import '../data/candi_data.dart'; // pastikan file ItemCard sudah ada

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1. Buat AppBar dengan judul Wisata Candi
      appBar: AppBar(
        title: const Text('Wisata Candi'),
      ),

      // TODO: 2. Buat body dengan GridView.builder
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // dua kolom
        ),
        padding: const EdgeInsets.all(8),
        itemCount: candiList.length,
        itemBuilder: (context, index) {
          // TODO: 3. Buat ItemCard sebagai return value
          Candi candi = candiList[index];
          return ItemCard(candi: candi);
        },
      ),
    );
  }
}
