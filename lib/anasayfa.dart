import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = false;
  @override
  void initState() {
    super.initState();
    print("initState() calisti");
  }

  Future<int> toplama(int sayi1, int sayi2) async{
    int toplam = sayi1 + sayi2;
    return toplam;
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
            Visibility(visible: kontrol, child: Text("Merhaba")),
            Text("Merhaba", style: TextStyle(color: kontrol ? Colors.green : Colors.red),),
            ((){
              if(kontrol){
                return const Text("Merhaba");
              }else{
                return const Text("Güle Güle");
              }
            }()),
            ElevatedButton(onPressed: (){
              setState(() {kontrol = true;});
            }, child: const Text("Durum 1 (true)")),
            ElevatedButton(onPressed: (){
              setState(() {kontrol = false;});
            }, child: const Text("Durum 1 (false)")),
            FutureBuilder<int>(
              future: toplama(10, 20),
              builder: (context, snapshot){
                if(snapshot.hasError){
                  return Text("Error oluştu");
                }
                if(snapshot.hasData){
                  return Text("Sonuc: ${snapshot.data}");
                }else{
                  return Text("Data yok");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
