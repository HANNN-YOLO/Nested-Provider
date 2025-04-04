import 'package:flutter/cupertino.dart';

class Barang with ChangeNotifier{
  final int  id;
  final String  nama;
  final String urlgambar;
  final String deks;
  final int jumlah;
  final int harga;
  bool favorito;

  Barang({
    required this.id,
    required this.nama,
    required this.urlgambar,
    required this.deks,
    required this.harga,
    required this.jumlah,
    this.favorito= false,
  });

  void status(){
    favorito = !favorito;
    notifyListeners();
  }

  // final List<Barang> mydata = List.generate(50, (index) {
  //   return Barang(
  //     id: index,
  //     nama: faker.person.name(),
  //     urlgambar: "https://picsum.photos/id/$index/200/300",
  //     deks: faker.lorem.sentence(),
  //     jumlah: 0 + index,
  //     harga: 10000 + Random().nextInt(500000000),
  //   );
  // });
  //
  // List<Barang> get dumydata{
  //   return mydata;
  // }

}