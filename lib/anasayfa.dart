import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  @override
  void initState() {
    super.initState();
    print("initState() calisti");
  }
  @override
  Widget build(BuildContext context) {
    print("Build calisti");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuc: $sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac++;
              });
            }, child: const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Bahadir", yas: 23, boy: 1.80, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani(kisi: kisi)))
                  .then((value) {
                    print("Anasayfaya Dönüldü..");
              });
            }, child: const Text("Basla")),
          ],
        ),
      ),
    );
  }
}
