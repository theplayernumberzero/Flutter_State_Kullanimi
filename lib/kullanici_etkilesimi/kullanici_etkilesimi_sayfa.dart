import 'package:flutter/material.dart';

class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({super.key});

  @override
  State<KullaniciEtkilesimiSayfa> createState() => _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kullanici Etkilesimi", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){

              }, child: const Text("Snackbar")),
              ElevatedButton(onPressed: (){

              }, child: const Text("Snackbar ÖZEL")),
              ElevatedButton(onPressed: (){

              }, child: const Text("Alert")),
              ElevatedButton(onPressed: (){

              }, child: const Text("Alert ÖZEL")),
            ],
          )),
    );
  }
}
