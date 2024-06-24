import 'package:flutter/material.dart';

class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({super.key});

  @override
  State<KullaniciEtkilesimiSayfa> createState() => _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
  //TextField için
  var tfControl = TextEditingController();
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
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: const Text("Silmek ister misiniz ?"),
                      action: SnackBarAction(label: "Evet", onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Silindi")));
                      }
                      ,),
                )
                );
              }, child: const Text("Snackbar")),
              ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("Silmek ister misiniz ?", style: TextStyle(color: Colors.indigoAccent),),
                      backgroundColor: Colors.white30,
                      action: SnackBarAction(label: "Evet", textColor: Colors.red, onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Silindi", style: TextStyle(color: Colors.red)),
                                backgroundColor: Colors.white30,
                            ));
                      }
                        ,),
                    )
                );
              }, child: const Text("Snackbar ÖZEL")),
              ElevatedButton(onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return  AlertDialog(
                        title: const Text("Baslık"),
                        content: const Text("İçerik"),
                        actions: [
                          TextButton(onPressed: (){
                            print("İptal Seçildi..");
                            Navigator.pop(context); //geri tuşu işlemi. Ekranda boş bir yere dokunma ile aynı işlevi görür.
                          }, child: const Text("İptal")),
                          TextButton(onPressed: (){
                            print("Tamam Seçildi..");
                            Navigator.pop(context); //geri tuşu işlemi. Ekranda boş bir yere dokunma ile aynı işlevi görür.
                          }, child: const Text("Tamam"))
                        ],
                      );
                    }
                );
              }, child: const Text("Alert")),
              ElevatedButton(onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return  AlertDialog(
                        title: const Text("Kayıt işlemi"),
                        content: TextField(controller: tfControl, decoration: const InputDecoration(hintText: "Veri Giriniz"),),
                        backgroundColor: Colors.grey,
                        actions: [
                          TextButton(onPressed: (){
                            print("İptal Seçildi..");
                            Navigator.pop(context); //geri tuşu işlemi. Ekranda boş bir yere dokunma ile aynı işlevi görür.
                          }, child: const Text("İptal", style: TextStyle(color: Colors.black),)),
                          TextButton(onPressed: (){
                            print("Alinan veri: ${tfControl.text}");
                            Navigator.pop(context); //geri tuşu işlemi. Ekranda boş bir yere dokunma ile aynı işlevi görür.
                            tfControl.text = ""; //okuma işleminden sonra textField içini temizleme
                          }, child: const Text("Kaydet", style: TextStyle(color: Colors.black),))
                        ],
                      );
                    }
                );
              }, child: const Text("Alert ÖZEL")),
            ],
          )),
    );
  }
}
