import 'package:flutter/material.dart';



class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController t = TextEditingController();
  List appJamYapilacaklarList = [];

  elemanEkle() {
    setState(() {
      appJamYapilacaklarList.add(t.text);
      t.clear();
    });
  }

  elemanCikar() {
    setState(() {
      appJamYapilacaklarList.remove(t.text);
      t.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: appJamYapilacaklarList.length,
              itemBuilder: (context, siraNumarasi) => ListTile(
                subtitle: const Text("App Jam Yapılacaklar"),
                title: Text(appJamYapilacaklarList[siraNumarasi]),
              ),
            ),
          ),
          TextField(
            controller: t,
          ),
          ElevatedButton(
            onPressed: elemanEkle,
            child: const Text('Ekle'),
          ),
          ElevatedButton(
            onPressed: elemanCikar,
            child: const Text('Çıkar'),
          ),
        ],
      ),
    );
  }
}