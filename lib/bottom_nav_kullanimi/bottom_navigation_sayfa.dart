import 'package:calisma_yapisi/bottom_nav_kullanimi/sayfa_bir.dart';
import 'package:calisma_yapisi/bottom_nav_kullanimi/sayfa_iki.dart';
import 'package:calisma_yapisi/bottom_nav_kullanimi/sayfa_uc.dart';
import 'package:flutter/material.dart';

class BottomNavigationSayfa extends StatefulWidget {
  const BottomNavigationSayfa({super.key});

  @override
  State<BottomNavigationSayfa> createState() => _BottomNavigationSayfaState();
}

class _BottomNavigationSayfaState extends State<BottomNavigationSayfa> {
  int secilenIndex = 0;
  var sayfalar = [const SayfaBir(), const SayfaIki(), const SayfaUc()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation kullanimi"),),
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined),label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined),label: "Ikı"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined),label: "Uc"),
        ],
        currentIndex: secilenIndex,
        onTap: (indeks){
          setState(() {
            secilenIndex = indeks;
          });
        },
      ),
    );
  }
}
